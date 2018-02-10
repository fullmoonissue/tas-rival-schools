require('config')
require('utils/table')

for i = 0, _G['currentLesson'] do
    require('hayato-lessons/' .. i)
end

joypadSet = {};

for i = 0, _G['currentLesson'] do
    concatTables(joypadSet, _G['joypadSet' .. i])
end

if(_G['loadSlot'] ~= nil) then
    savestate.loadslot(_G['loadSlot']);
end

while (true) do

    local fc = emu.framecount();

    if(joypadSet[fc]) then
        joypad.set(joypadSet[fc]);
    end

    if(_G['doSaveStateAt'] ~= nil and _G['saveSlot'] ~= nil and fc == _G['doSaveStateAt']) then
        savestate.saveslot(_G['saveSlot']);
    end

    emu.frameadvance();
end