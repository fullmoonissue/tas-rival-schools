local files = require('files')
require('utils/class')

local Fs = class()

function Fs:iterateOver(tas, callback)
    for _, file in ipairs(files[tas]) do
        if file ~= '.' and file ~= '..' then
            callback('tas/' .. tas .. '/' .. file)
        end
    end
end

return Fs;