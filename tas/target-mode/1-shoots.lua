local input = require('core/input')
local macro = require('plugins/macro/collection')

local cf = 102401

-- First shoot
cf = macro.upRight(cf + 1, 27)
cf = input:up(cf + 1, 32)
cf = input:cross(cf + 1)
cf = macro.downLeft(cf + 1, 45)
cf = input:left(cf + 1, 1)
-- Second shoot
cf = macro.upLeft(cf + 316, 27)
cf = input:up(cf + 1, 32)
cf = input:cross(cf + 1)
cf = macro.downRight(cf + 1, 45)
cf = input:right(cf + 1, 1)
-- Third shoot
cf = macro.upRight(cf + 316, 30)
cf = input:up(cf + 1, 10)
cf = input:cross(cf + 1)
cf = macro.downLeft(cf + 1, 2)
cf = input:left(cf + 1, 44)
-- Fourth shoot
cf = macro.upLeft(cf + 188, 40)
cf = input:up(cf + 1, 19)
cf = input:cross(cf + 1)
cf = macro.downRight(cf + 1, 15)
cf = input:right(cf + 1, 31)
-- Fifth shoot
cf = macro.upRight(cf + 312, 38)
cf = input:up(cf + 1, 7)
cf = input:cross(cf + 1)
cf = macro.downLeft(cf + 1, 5)
cf = input:left(cf + 1, 38)
-- Sixth shoot
cf = macro.upLeft(cf + 193, 18)
cf = input:up(cf + 1, 32)
cf = input:cross(cf + 1)
cf = macro.downRight(cf + 1, 12)
cf = input:right(cf + 1, 24)

return input:all()