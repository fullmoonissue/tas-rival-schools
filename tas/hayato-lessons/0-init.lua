local Input = require('utils/input')

-- Init
local input = Input()

-- Skip the autoload from memory card
input:start(1385)
input:start(1508)
input:start(1550)
input:start(1600)
input:left(1711)
input:cross(1712)
input:down(1809)
input:right(1810)
input:right(1811)
input:right(1813)
input:right(1815)
input:cross(1816)
input:right(1817)
input:right(1819)
input:cross(1820)

return input:all()