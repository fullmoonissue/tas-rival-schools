require('config')
require('utils/table')

for i = 0, _G['currentLesson'] do
    require('./../hayato-lessons/' .. i)
end

joypadSet = {};

for i = 0, _G['currentLesson'] do
    concatTables(joypadSet, _G['joypadSet' .. i])
end

-- Trick to keep the frames ordered
local joypadSetSorted = {}
for frame, _ in pairs(joypadSet) do table.insert(joypadSetSorted, frame) end
table.sort(joypadSetSorted)

function dump(outputFilename)
    local contents = 'joypadSet = {' .. "\n";
    for index, frame in ipairs(joypadSetSorted) do
        contents = contents .. string.rep(' ', 4) .. '[' .. frame .. '] = {' .. "\n"
        for input, _ in pairs(joypadSet[joypadSetSorted[index]]) do
            contents = contents .. string.rep(' ', 8) .. '["' .. input .. '"] = true,' .. "\n"
        end
        contents = contents .. string.rep(' ', 4) .. '},' .. "\n"
    end
    contents = contents .. '};'

    local file = io.open(outputFilename, 'w')
    file:write(contents)
    file:close()
end