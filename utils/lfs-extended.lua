local lfs = require('lfs')

function getFilesThen (path, callback)
    for file in lfs.dir(path) do
        if file ~= '.' and file ~= '..' then
            callback(path .. '/' .. file)
        end
    end
end