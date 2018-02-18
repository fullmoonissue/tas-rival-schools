local config = require('config')
require('utils/class')

local Fs = class()

function Fs:iterateOver(tas, callback)
    for _, file in ipairs(config['tasFiles'][tas]) do
        if file ~= '.' and file ~= '..' then
            callback(tas .. '/' .. file)
        end
    end
end

return Fs;