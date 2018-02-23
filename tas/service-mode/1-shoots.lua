local Input = require('utils/input')
local input = Input()

local cf

-- First shoot
cf = input:square(102514, 36)
-- Second shoot
cf = input:square(102929, 60)
-- Third shoot
cf = input:left(103377, 36)
cf = input:square(cf + 4, 61)
-- Forth shoot
cf = input:left(103875, 39)
cf = input:square(cf + 5, 54)
-- Fifth shoot
cf = input:left(104341, 3)
cf = input:square(cf + 39)
-- Sixth shoot
cf = input:right(104692, 119)
cf = input:square(cf + 8, 61)
-- Seventh shoot
cf = input:right(105278, 44)
cf = input:square(cf + 84, 51)
-- Eighth shoot
cf = input:square(105860)

return input:all()