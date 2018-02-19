local Input = require('utils/input')
local input = Input()

local cf
-- First shoot
cf = input:up(102402, 32)
cf = input:cross(cf + 1)
cf = input:left(cf + 1, 23)
-- Second shoot
cf = input:up(cf + 325, 32)
cf = input:cross(cf + 1)
cf = input:right(cf + 1, 23)
-- Third shoot
cf = input:cross(cf + 325)
cf = input:left(cf + 1, 20)
-- Fourth shoot
cf = input:cross(cf + 211)
cf = input:right(cf + 1, 20)
-- Fifth shoot
cf = input:up(cf + 211, 34)
cf = input:triangle(cf + 1)
-- Sixth shoot
cf = input:up(cf + 224, 34)
cf = input:cross(cf + 1)

return input:all()