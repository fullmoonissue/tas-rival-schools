require('utils/class')
require('utils/fs')
require('utils/table')

BizhawkJoypad = class()

function BizhawkJoypad:getInputs(tas)
    local fs = Fs()
    local table = Table()

    local inputs = {}
    fs:iterateOver(tas, function(filePath)
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