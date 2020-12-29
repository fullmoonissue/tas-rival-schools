
--[[ Script to record the best tries of 5 for each 10 shoots ]]--

-- To understand what this script is written for,
-- please read the youtube description in the file assets/publication/home-run-697m-youtube.txt

-- A RAM Watch file is available here : assets/ram-watch/home-run-mode.wch

-- Requirements :
-- 1. Savestate "mini-games-prepared" preloaded (cf plugins/preload/collection.lua)
-- 2. Slot 1 savestate free (will be used)
-- 3. The SQLite database db/home_run.db have to exist (will be created when the tas will be launched)
-- 4. Enable the collect of the stats, to do so :
--   . In configuration/play.lua, assign true to ['home-run-mode']['collect-stats']

-- Requirements (if script played for multiple seeds) :
-- "Initial Manual Savestate" : a savestate have to bet set on the slot 0 at the frame 101638

--[[ Requires ]]--

-- Scripts which "talk" with the SQLite database
local homeRunScripts = require('scripts/home-run')
-- Tool to write input for the Bizhawk's joypad
local bhc = require('plugins/bizhawk/configuration')

--[[ Variables ]]--

-- Initial seed (number of frames to wait before selecting the home run mini game)
local seed = -1

-- The first available frame after the preloaded savestate is 101638
-- But any action have to begin one frame after else the first input will not be played
-- (especially when reloading to the "Initial Manual Savestate")
local frameStart = 101639

-- Frame on which the Home Run mini game is selected
local frameSelectHomeRun = -1

-- Frame on which the Home Run mini game is started
local frameStartHomeRun = -1

-- Frame on which the setup for a shoot begins
-- 1. Create a savestate on slot 1 (will be loaded when the result of a shoot is retrievable)
-- 2. A "listen" to the desired ball distance before shooting will begin
local frameBeginToWork = -1

-- Saved frames shoot (the best for the current seed)
local framesBestShoot = {}

-- Keep temporary the frame of the shoot (to be write in database after)
local frameLastShoot

-- Current number of shoot (10 in total)
local numberShoot = 1
local totalShoots = 10

-- The distance min and max found from the first TAS where a correct amount of meters can appear
local distanceBallFromShomaBegin = 20
local distanceBallFromShomaEnd = 25
local distanceBallFromShomaCurrent = distanceBallFromShomaBegin

-- Id for the table in the database
local idEntry = 0

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

--[[ Functions ]]--

local function collectStats(fc)

    --[[ Preparation ]]--

    -- Move to the mini game
    if fc == frameStart then
        joypad.set({ [bhc.joypadLeft(1)] = true })
    elseif fc == frameStart + 1 or fc == frameStart + 3 or fc == frameStart + 5 or fc == frameStart + 7 then
        joypad.set({ [bhc.joypadDown(1)] = true })
    elseif fc == frameStart + 8 then
        seed = seed + 1
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

    --[[ Stats ]]--

    if frameBeginToWork == -1 and getValueOfNumberShoot() == numberShoot then
        frameBeginToWork = fc
        savestate.saveslot(1)
    end

    if frameBeginToWork ~= -1
        and fc > frameBeginToWork
        and getValueOfDistanceBallFromShoma() == distanceBallFromShomaCurrent
    then
        joypad.set({ [bhc.joypadCircle(1)] = true })
        frameLastShoot = fc
    end

    if getValueOfNumberShoot() == numberShoot and getValueOfDistanceHomeRun() > 1 then
        idEntry = idEntry + 1
        homeRunScripts.insertSeedFrameResult(idEntry, seed, numberShoot, frameLastShoot, getValueOfDistanceHomeRun())

        distanceBallFromShomaCurrent = distanceBallFromShomaCurrent + 1
        if distanceBallFromShomaCurrent == distanceBallFromShomaEnd then
            -- re-init variables
            frameBeginToWork = -1
            distanceBallFromShomaCurrent = distanceBallFromShomaBegin
            -- keep the best shot
            framesBestShoot[homeRunScripts.retrieveFrameBestShoot(seed, numberShoot)] = true
            numberShoot = numberShoot + 1
        end
        if numberShoot > totalShoots then
            numberShoot = 1
            -- reprocess from the beginning (means new seed)
            savestate.loadslot(0)
        else
            -- reprocess the current shoot
            savestate.loadslot(1)
        end
    end
end

local play = require('configuration/play')
local function applySubscriptions(mediator)
    mediator:subscribe({ 'frame.displayed' }, function(fc)
        if play['home-run-mode']['collect-stats'] then
            collectStats(fc)
        end
    end)
end

local Overlay = {}
Overlay.applySubscriptions = applySubscriptions

return Overlay