require('utils/class')
require('utils/table')
require('utils/tas')

BizhawkJoypad = class()

function BizhawkJoypad:getInputs(section)
    local tas = Tas()
    local table = Table()

    local inputs = {}
    tas:iterateOver(section, function(filePath)
        table:join(inputs, require(filePath))
    end)

    return inputs
end

-- Trick to keep the frames ordered
function BizhawkJoypad:getOrderedFrames(inputs)
    local orderedFrames = {}
    for frame, _ in pairs(inputs) do
        table.insert(orderedFrames, frame)
    end
    table.sort(orderedFrames)

    return orderedFrames
end