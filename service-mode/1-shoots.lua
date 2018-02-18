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

--[[
0 : Raizo (- 200 pts)
1 : Roberto (+ 100 pts)
1 : Sakura (+ 300 pts)
1 : Hinata (+ 500 pts)
1 : Shoma (+ 1000 pts)

2 - 4 2 1 - - 1 - - 1 2 4 - 2
1 - - 3 - - - 4 - - - 3 - - 1
- - - - - - - - - - - - - - -
4 - - - - - - 0 - - - - - - 4
- 0 4 - 0 - 3 1 3 - 0 - 4 - 0
- - - - - - - 4 - - - - - - -
- - - 2 3 - - - - - 3 2 - - -
- - - - - - - - - - - - - - -
- - 0 - 1 - - - - - 1 - 0 - -
- - 4 - 2 - - 4 - - 2 - 4 - -


              N
]]