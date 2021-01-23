local input = require('core/input')

local nbWaitingFrames = 23 -- RNG / Seed

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

-- First shoot (135m)
cf = input:circle(102638)
-- Second shoot (141m)
cf = input:circle(103157)
-- Third shoot (140m)
cf = input:circle(103680)
-- Forth shoot (137m)
cf = input:circle(104214)
-- Fifth shoot (140m)
cf = input:circle(104735)
-- Sixth shoot (139m)
cf = input:circle(105259)
-- Seventh shoot (140m)
cf = input:circle(105781)
-- Eighth shoot (137m)
cf = input:circle(106306)
-- Ninth shoot (137m)
cf = input:circle(106827)
-- Tenth shoot (135m)
cf = input:circle(107351)

-- Total : 700m

return input:all()