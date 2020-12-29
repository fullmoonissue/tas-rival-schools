local input = require('core/input')

local nbWaitingFrames = 2 -- RNG / Seed

--[[ Init ]]--

local cf = 101639
-- Move to mini game
input:left(cf)
input:down(cf + 1)
input:down(cf + 3)
input:down(cf + 5)
input:down(cf + 7)
cf = cf + 8 + nbWaitingFrames
-- Select mini game
input:cross(cf)
-- Start mini game
input:cross(cf + 258)

--[[ Shoots ]]--

-- First shoot (139m)
cf = input:circle(102611)
-- Second shoot (138m)
cf = input:circle(103135)
-- Third shoot (134m)
cf = input:circle(103659)
-- Forth shoot (139m)
cf = input:circle(104191)
-- Fifth shoot (135m)
cf = input:circle(104711)
-- Sixth shoot (138m)
cf = input:circle(105234)
-- Seventh shoot (139m)
cf = input:circle(105757)
-- Eighth shoot (140m)
cf = input:circle(106279)
-- Ninth shoot (140m)
cf = input:circle(106801)
-- Tenth shoot (139m)
cf = input:circle(107333)

-- Total : 697m

return input:all()