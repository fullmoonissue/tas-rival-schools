local Input = require('utils/input')
local input = Input()

local cf

-- First shoot
cf = input:square(102514, 35)
-- Second shoot
cf = input:square(102927, 60)
-- Third shoot
cf = input:left(103377, 37)
cf = input:square(cf + 4, 62)
-- Forth shoot
cf = input:left(103881, 42)
cf = input:square(cf + 2, 56)
-- Fifth shoot
cf = input:square(104392)
-- Sixth shoot
cf = input:right(104703, 120)
cf = input:square(cf + 8, 62)
-- Seventh shoot
cf = input:right(105295, 42)
cf = input:square(cf + 2, 56)
-- Eighth shoot
cf = input:square(105810)

return input:all()