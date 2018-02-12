require('config')
require('utils/joypad')
require('utils/table')

function dump(joypadSet, joypadSetSorted)
    local contents = 'joypadSet = {' .. "\n";
    for index, frame in ipairs(joypadSetSorted) do
        contents = contents .. string.rep(' ', 4) .. '[' .. frame .. '] = {' .. "\n"
        for input, _ in pairs(joypadSet[joypadSetSorted[index]]) do
            contents = contents .. string.rep(' ', 8) .. '["' .. input .. '"] = true,' .. "\n"
        end
        contents = contents .. string.rep(' ', 4) .. '},' .. "\n"
    end
    contents = contents .. '};'

    return contents;
end

function write(outputFilename, dump)
    local file = io.open('dump/' .. outputFilename, 'w')
    file:write(dump)
    file:close()
end

-- Utility to dump the concatenated lessons
-- This will be used as requirement to construct the Input Log for Bizhawk
function dumpLessons(currentLesson, lessonsFolder, outputFilename)
    local joypadSet = getJoypadSet(lessonsFolder);
    write(outputFilename, dump(joypadSet, getOrderedJoypadFrames(joypadSet)));
end