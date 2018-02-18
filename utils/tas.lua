local config = require('config')
require('utils/class')

Tas = class()

function Tas:iterateOver(section, callback)
    for _, file in ipairs(config['tasFiles'][section]) do
        if file ~= '.' and file ~= '..' then
            callback(section .. '/' .. file)
        end
    end
end