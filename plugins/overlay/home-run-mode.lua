--[[ Script to record the best attempts of 5 for each 10 shoots ]]--

-- A RAM Watch file is available here : assets/ram-watch/home-run-mode.wch

-- Requirements :
-- 1. Savestate "mini-games-prepared" preloaded (cf plugins/preload/collection.lua)
-- 2. Slot 1 savestate free (will be used)
-- 3. The SQLite database db/home_run.db have to exist (will be created when the tas will be launched if not)
-- 4. Enable the benchmark, to do so :
--   . In configuration/play.lua, assign true to ['home-run-mode']['benchmark']

--[[ Requires ]]--

-- Grid properties useful for the overlay
local gridUtils = require('plugins/overlay/utils')

-- Scripts which "talk" with the SQLite database
local homeRunScripts = require('scripts/home-run')

-- Tool to write input for the Bizhawk's joypad
local bhc = require('plugins/bizhawk/configuration')

--[[ Variables ]]--

-- Initial seed (aka number of frames to wait before selecting the home run mini game)
local seed = 23

-- The first available frame after the preloaded savestate is 101638, one frame is added just in case
local frameStart = 101639

-- Frame on which the Home Run mini game is selected
local frameSelectHomeRun = -1

-- Frame on which the Home Run mini game is started
local frameStartHomeRun = -1

-- Frame on which the setup for a shoot begins
local frameSavestateAssigned = -1
local nbFramesBeforeSaveState = 130

-- Saved frames of shoot (the best of 5 attempts)
local framesBestShoot = {}

-- Keep temporary the frame of the shoot (to be write in database after)
local frameLastShoot

-- Current number of shoot (10 in total)
local numberShoot = 1

-- The distance (min and max) between the ball and Shoma found from the first TAS where there was a reasonable score
local distanceBallFromShomaBegin = 20
local distanceBallFromShomaEnd = 25
local distanceBallFromShomaCurrent = distanceBallFromShomaBegin

-- Id for the table in the database
local idEntry = 0

-- Overlay (overlay)
local defaultFontSize = 13
local xOverlay = gridUtils.gridValues['xRightArea']
local yOverlay
local emptyValue = ' - '
local attempts = {
    emptyValue, emptyValue, emptyValue, emptyValue, emptyValue
}
local shoots = {
    emptyValue, emptyValue, emptyValue, emptyValue, emptyValue,
    emptyValue, emptyValue, emptyValue, emptyValue, emptyValue
}

--[[ Memory values ]]--

local function getValueOfNumberShoot()
    return memory.read_u8(0x1F1F0C)
end

local function getValueOfDistanceBallFromShoma()
    return memory.read_s32_le(0x0949B8)
end

local function getValueOfDistanceHomeRun()
    return memory.read_s16_le(0x1F1F0E)
end

--[[ Overlay Functions ]]--

local function makeBorder(nbScores)
    return string.rep('-', 5 * nbScores + nbScores + 1)
end

local function resetAttempts()
    attempts = {emptyValue, emptyValue, emptyValue, emptyValue, emptyValue}
end

local function drawText(y, text, fontSize, centered, x)
    centered = centered == nil and true or centered
    fontSize = fontSize or defaultFontSize
    x = x or xOverlay
    if centered then
        x = xOverlay + gridUtils.centerHorizontally(
            xOverlay,
            gridUtils.gridValues['screenWidth'],
            text,
            fontSize
        )
    end
    gui.drawText(x, y, text, 'white', 'black', fontSize)
end

local function drawOverlay()

    --[[ Header ]]--

    yOverlay = 22
    drawText(yOverlay, '[TAS] Home Run Mode (Benchmark)', 20)

    --[[ Process ]]--

    local xProcess = xOverlay + 100
    yOverlay = 75
    gui.drawLine(xProcess - 5, yOverlay, xProcess - 5, yOverlay + 80)
    drawText(yOverlay, 'For each shoot', 17, false, xProcess)
    yOverlay = yOverlay + 22
    drawText(yOverlay, '-> do 5 attempts', 17, false, xProcess)
    yOverlay = yOverlay + 19
    drawText(yOverlay, '-> search the best of 5', 17, false, xProcess)
    yOverlay = yOverlay + 19
    drawText(yOverlay, '-> replay the best attempt', 17, false, xProcess)

    --[[ Attempts ]]--

    local border = makeBorder(5)
    yOverlay = 190
    drawText(yOverlay, 'Attempts', 17)
    yOverlay = yOverlay + 20
    drawText(yOverlay, border)
    yOverlay = yOverlay + 15
    drawText(yOverlay, '|  1  |  2  |  3  |  4  |  5  |')
    yOverlay = yOverlay + 15
    drawText(yOverlay, border)
    yOverlay = yOverlay + 15
    drawText(
        yOverlay,
        string.format(
            '| %s | %s | %s | %s | %s |',
            attempts[1],
            attempts[2],
            attempts[3],
            attempts[4],
            attempts[5]
        )
    )
    yOverlay = yOverlay + 15
    drawText(yOverlay, border)

    --[[ Shoots ]]--

    border = makeBorder(10)
    yOverlay = 315
    drawText(yOverlay, 'Shoots', 17)
    yOverlay = yOverlay + 20
    drawText(yOverlay, border)
    yOverlay = yOverlay + 15
    drawText(yOverlay, '|  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |  10 |')
    yOverlay = yOverlay + 15
    drawText(yOverlay, border)
    yOverlay = yOverlay + 15
    drawText(
        yOverlay,
        string.format(
            '| %s | %s | %s | %s | %s | %s | %s | %s | %s | %s |',
            shoots[1],
            shoots[2],
            shoots[3],
            shoots[4],
            shoots[5],
            shoots[6],
            shoots[7],
            shoots[8],
            shoots[9],
            shoots[10]
        )
    )
    yOverlay = yOverlay + 15
    drawText(yOverlay, border)
end

--[[ Home Run Benchmark Overlay Function ]]--

local function homeRunBenchmark(fc, showOverlay)

    --[[ Overlay ]]--

    if showOverlay then
        drawOverlay()
    end

    --[[ Preparation ]]--

    -- Move to the mini game
    if fc == frameStart then
        joypad.set({ [bhc.joypadLeft(1)] = true })
    elseif fc == frameStart + 1 or fc == frameStart + 3 or fc == frameStart + 5 or fc == frameStart + 7 then
        joypad.set({ [bhc.joypadDown(1)] = true })
    elseif fc == frameStart + 8 then
        frameSelectHomeRun = frameStart + 8 + seed
    end

    -- Select the mini game
    if fc == frameSelectHomeRun then
        joypad.set({ [bhc.joypadCross(1)] = true })
        frameStartHomeRun = fc + 258
    end

    -- Start the mini game
    if fc == frameStartHomeRun then
        joypad.set({ [bhc.joypadCross(1)] = true })
    end

    --[[ Game ]]--

    -- If a saved shoot (a best of 5) has been assigned to the current frame then shoot
    if framesBestShoot[fc] ~= nil then
        joypad.set({ [bhc.joypadCircle(1)] = true })
    end

    --[[ Benchmark ]]--

    -- Assign the savestate to reload from
    if frameSavestateAssigned == -1 and getValueOfNumberShoot() == numberShoot then
        if nbFramesBeforeSaveState > 0 then
            nbFramesBeforeSaveState = nbFramesBeforeSaveState - 1
        else
            frameSavestateAssigned = fc
            savestate.saveslot(1)
        end
    end

    -- Do the attempt
    if frameSavestateAssigned ~= -1
        and fc > frameSavestateAssigned
        and getValueOfDistanceBallFromShoma() == distanceBallFromShomaCurrent
    then
        joypad.set({ [bhc.joypadCircle(1)] = true })
        frameLastShoot = fc
    end

    -- When the result of an attempt is retrievable ...
    if getValueOfNumberShoot() == numberShoot and getValueOfDistanceHomeRun() > 1 then
        -- Insert result in database
        idEntry = idEntry + 1
        homeRunScripts.insertSeedFrameResult(idEntry, seed, numberShoot, frameLastShoot, getValueOfDistanceHomeRun())

        -- Update the values displayed in the overlay
        if showOverlay then
            if distanceBallFromShomaCurrent == distanceBallFromShomaBegin then
                resetAttempts()
            end
            attempts = homeRunScripts.retrieveAttemptsOf(seed, numberShoot, emptyValue)
        end

        distanceBallFromShomaCurrent = distanceBallFromShomaCurrent + 1
        -- If there is no more attempt to do
        if distanceBallFromShomaCurrent == distanceBallFromShomaEnd then
            -- Re-init variables
            frameSavestateAssigned = -1
            nbFramesBeforeSaveState = 125
            distanceBallFromShomaCurrent = distanceBallFromShomaBegin
            -- Keep the best shoot ...
            local bestShoot = homeRunScripts.retrieveBestShoot(seed, numberShoot)
            -- ... frame ...
            framesBestShoot[bestShoot['frame']] = true
            -- ... and result (for the overlay)
            if showOverlay then
                shoots[numberShoot] = bestShoot['result']
            end
            numberShoot = numberShoot + 1
        end

        -- Do an other attempt
        savestate.loadslot(1)
    end
end

--[[ Home Run Overlay Functions ]]--

local joypadTas = require('tas/home-run-mode/init-and-shoots')
local function getDisplayedInput(inputs)
    if not inputs then
        return ''
    end

    if inputs['P1 Down'] then
        return 'v'
    elseif inputs['P1 Left'] then
        return '<'
    elseif inputs['P1 Circle'] then
        return 'O'
    elseif inputs['P1 Cross'] then
        return 'X'
    else
        return ''
    end
end

local frameShoots = {
    102638,
    103157,
    103680,
    104214,
    104735,
    105259,
    105781,
    106306,
    106827,
    107351,
}
local function homeRunOverlay(fc)

    --[[ Header ]]--

    yOverlay = 22
    drawText(yOverlay, '[TAS] Home Run Mode', 20)

    --[[ Frame ]]--

    yOverlay = 57
    drawText(yOverlay, 'Frame : ' .. fc, 15)
    gui.drawLine(xOverlay, yOverlay + 28, gridUtils.gridValues['screenWidth'], yOverlay + 28)

    --[[ Frame of shoot ]]--

    yOverlay = 115
    for indexShoot = 1, 10 do
        drawText(
            yOverlay + (32 * (indexShoot - 1)),
            (getValueOfNumberShoot() == indexShoot and '> ' or '') .. 'Shoot ' .. indexShoot .. ' : ' .. frameShoots[indexShoot],
            defaultFontSize,
            false,
            xOverlay + 25
        )
    end

    --[[ Playback ]]--

    yOverlay = 105
    local shift = 0
    for index = -10, 10 do
        drawText(
            yOverlay + shift,
            (index == 0 and '> ' or '  ') .. (fc + index) .. ' : ' .. getDisplayedInput(joypadTas[fc + index]),
            defaultFontSize,
            false,
            xOverlay + 300
        )
        shift = shift + 15
    end

    yOverlay = 438
    gui.drawRectangle(xOverlay, yOverlay, math.floor(gridUtils.gridValues['wRightArea'] / 2) - 25, 25)
    local text = 'Frame by Shoot'
    gui.drawText(
        xOverlay + gridUtils.centerHorizontally(
            xOverlay,
            xOverlay + math.floor(gridUtils.gridValues['wRightArea'] / 2) - 25,
            text,
            15
        ),
        yOverlay + 3,
        text,
        'white',
        'black',
        15
    )
    gui.drawRectangle(
        xOverlay + math.floor(gridUtils.gridValues['wRightArea'] / 2) + 25,
        yOverlay,
        math.floor(gridUtils.gridValues['wRightArea'] / 2) - 25,
        25
    )
    text = 'Input\'s Playback'
    gui.drawText(
        xOverlay + math.floor(gridUtils.gridValues['wRightArea'] / 2) + 25 + gridUtils.centerHorizontally(
            xOverlay + math.floor(gridUtils.gridValues['wRightArea'] / 2) + 25,
            gridUtils.gridValues['screenWidth'],
            text,
            15
        ),
        yOverlay + 3,
        text,
        'white',
        'black',
        15
    )
end

--[[ Mediator subscription ]]--

local play = require('configuration/play')
local function applySubscriptions(mediator)
    mediator:subscribe({ 'frame.displayed' }, function(fc)
        if play['home-run-mode']['benchmark'] then
            homeRunBenchmark(fc, play['home-run-mode']['show-benchmark-overlay'])
        elseif play['home-run-mode']['show-overlay'] then
            homeRunOverlay(fc)
        end
    end)
end

local Overlay = {}
Overlay.applySubscriptions = applySubscriptions

return Overlay