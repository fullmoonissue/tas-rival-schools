require('config')
require('utils/class')
require('utils/joypad')
require('utils/table')

Dump = class(function(d, outputFilename)
    d.content = nil
    d.outputFilename = outputFilename
end)

function Dump:process(section)
    local bj = BizhawkJoypad()
    local inputs = bj:getInputs(section)
    local orderedFrames = bj:getOrderedFrames(inputs)

    local content = 'joypadSet = {' .. "\n"
    for index, frame in ipairs(orderedFrames) do
        content = content .. string.rep(' ', 4) .. '[' .. frame .. '] = {' .. "\n"
        for input, _ in pairs(inputs[orderedFrames[index]]) do
            content = content .. string.rep(' ', 8) .. '["' .. input .. '"] = true,' .. "\n"
        end
        content = content .. string.rep(' ', 4) .. '},' .. "\n"
    end
    self.content = content .. '}'
end

function Dump:write()
    local file = io.open('dump/' .. self.outputFilename, 'w')
    file:write(self.content)
    file:close()
end