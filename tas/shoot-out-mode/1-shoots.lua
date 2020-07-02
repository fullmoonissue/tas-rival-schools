local input = require('core/input')

local cf

-- First shoot (Human)
cf = input:cross(102434)
cf = input:left(cf + 1, 23)
-- First shoot (CPU)
-- Nothing to do, he's shooting too high
-- Second shoot (Human)
cf = input:up(103445, 34)
cf = input:right(cf + 1, 13)
cf = input:cross(cf + 1)
cf = input:right(cf + 1, 23)
-- Second shoot (CPU)
-- Nothing to do, he's shooting on me
-- Third shoot (Human)
cf = input:up(104435, 5)
cf = input:left(cf + 1, 36)
cf = input:cross(cf + 1)
cf = input:right(cf + 1, 30)
-- Third shoot (CPU)
-- Nothing to do, he's shooting on me

return input:all()