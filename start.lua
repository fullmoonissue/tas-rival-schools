local play = require('configuration/play')
local currentTas = play['currentTas']

local homeRunScripts
if currentTas == 'home-run-mode' then
    homeRunScripts = require('scripts/home-run')
    local f = io.open('db/home_run.db', 'r')
    if f ~= nil then
        io.close(f)
    else
        homeRunScripts.prepareDatabase()
    end
end

local loadSlot = play['loadSlot']

local paths = require('configuration/paths')

local files = {}
local cFiles = require(paths['files'])
if (cFiles[currentTas] ~= nil) then
    for _, file in ipairs(cFiles[currentTas]) do
        files[#files + 1] = table.concat({ paths['tas'], currentTas, file }, '/')
    end
end

-- Retrieve the inputs of the current tas
local joypadSet = require('core/input').merge(files)

-- Preload a savestate, if exists
local preloads = require(paths['preloads'])
if (preloads[currentTas] ~= nil) then
    savestate.load(table.concat({ paths['savestate'], preloads[currentTas] }, '/'))
end

-- Load the current savestate, if defined and exists
if (loadSlot ~= nil) then
    savestate.loadslot(loadSlot)
end

-- Add overlays
local mediator = require('mediator')()
if 'home-run-mode' == currentTas then
    require('plugins/overlay/home-run-mode').applySubscriptions(mediator)
else
    require('plugins/overlay/collection').applySubscriptions(mediator)
end

-- Screenshot configuration
local screenshotConfiguration = require(paths['screenshot'])

if ('home-run-mode' == currentTas and play['home-run-mode']['benchmark'] and play['home-run-mode']['show-benchmark-overlay'])
or ('home-run-mode' == currentTas and not play['home-run-mode']['benchmark'] and play['home-run-mode']['show-overlay'])
then
    client.SetGameExtraPadding(0, 0, 350, 0)
else
    client.SetGameExtraPadding(0, 0, 0, 0)
end

while (true) do
    -- Retrieve the current frame ...
    local fc = emu.framecount()

    -- ... then dispatch it (for overlays) ...
    mediator:publish({ 'frame.displayed' }, fc)

    -- ... then "push" the inputs (if inputs are set for this frame) ...
    if (joypadSet[fc]) then
        joypad.set(joypadSet[fc])
    end

    -- ... then do a screenshot if set for this frame ...
    if (screenshotConfiguration[fc]) then
        client.screenshot(screenshotConfiguration[fc])
    end

    -- ... and forward to the next frame
    emu.frameadvance()
end