local Input = require('utils/input')
local input = Input()

local cf
-- First shoot
cf = input:circle(102610)
-- Second shoot
cf = input:circle(cf + 524)
-- Third shoot
cf = input:circle(cf + 521)
-- Forth shoot
cf = input:circle(cf + 523)
-- Fifth shoot
cf = input:circle(cf + 521)
-- Sixth shoot
cf = input:circle(cf + 521)
-- Seventh shoot
cf = input:circle(cf + 526)
-- Eighth shoot
cf = input:circle(cf + 523)
-- Ninth shoot
cf = input:circle(cf + 524)
-- Tenth shoot
cf = input:circle(cf + 531)

return input:all()