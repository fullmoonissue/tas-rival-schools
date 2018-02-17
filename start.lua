local config = require('config')
require('utils/joypad')
require('utils/table')

-- Retrieve the inputs of the current tas
local bj = BizhawkJoypad()
local joypadSet = bj:getInputs(config['currentTas'])

-- Preload a savestate if needed
if(config['loadSavestate'][config['currentTas']] ~= nil) then
    savestate.load('savestate/' .. config['loadSavestate'][config['currentTas']])
end

-- Load the current savestate
if(config['loadSlot'] ~= nil) then
    savestate.loadslot(config['loadSlot'])
end

while (true) do
    local fc = emu.framecount()

    gui.drawText(5, 75, fc, 'white', 'black', 30)

    if(joypadSet[fc]) then
        joypad.set(joypadSet[fc])
    end

    if(config['doSaveStateAt'] ~= nil and config['saveSlot'] ~= nil and fc == config['doSaveStateAt']) then
        savestate.saveslot(config['saveSlot'])
    end

    emu.frameadvance()
end