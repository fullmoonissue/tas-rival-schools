require('config')
require('utils/joypad')
require('utils/table')

local bj = BizhawkJoypad()
local joypadSet = bj:getInputs('hayato-lessons')

if(_G['loadSlot'] ~= nil) then
    savestate.loadslot(_G['loadSlot'])
end

while (true) do
    local fc = emu.framecount()

    if(joypadSet[fc]) then
        joypad.set(joypadSet[fc])
    end

    if(_G['doSaveStateAt'] ~= nil and _G['saveSlot'] ~= nil and fc == _G['doSaveStateAt']) then
        savestate.saveslot(_G['saveSlot'])
    end

    emu.frameadvance()
end