require('utils/lfs-extended')

function getJoypadSet(lessonsFolder)
    getFilesThen(lessonsFolder, function(filePath)
        require(filePath:gsub('.lua', ''))
    end)

    local joypadSet = {};
    for i = 0, currentLesson do
        concatTables(joypadSet, _G['joypadSet' .. i])
    end

    return joypadSet;
end

function getOrderedJoypadFrames(joypadSet)
    -- Trick to keep the frames ordered
    local joypadSetSorted = {}
    for frame, _ in pairs(joypadSet) do
        table.insert(joypadSetSorted, frame)
    end
    table.sort(joypadSetSorted)

    return joypadSetSorted
end