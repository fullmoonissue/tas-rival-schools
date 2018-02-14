require('utils/class')
require('utils/tas')

BizhawkJoypad = class()

function BizhawkJoypad:getInputs(section)
    local tas = Tas()

    tas:iterateOver(section, function(filePath)
        require(filePath)
    end)

    local inputs = {}
    for key, _ in pairs(_G) do
        if(key:match('joypadSet%d+')) then
            concatTables(inputs, _G[key])
        end
    end

    return inputs
end

function BizhawkJoypad:getOrderedFrames(inputs)
    -- Trick to keep the frames ordered
    local orderedFrames = {}
    for frame, _ in pairs(inputs) do
        table.insert(orderedFrames, frame)
    end
    table.sort(orderedFrames)

    return orderedFrames
end