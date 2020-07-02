local input = require('core/input')

-- First shoot (5000 - 5000)
local cf = 102400
cf = input:left(cf, 155)
cf = input:square(cf + 45, 2)
-- Second shoot (5800 - 10800)
cf = cf + 279
cf = input:right(cf, 37)
cf = input:square(cf + 34, 52)
-- Third shoot (6000 - 16800)
cf = cf + 333
cf = input:right(cf, 68)
cf = input:square(cf + 6, 62)
-- Forth shoot (2100 - 18900)
cf = cf + 367
cf = input:right(cf, 67)
cf = input:square(cf + 10, 59)
-- Fifth shoot (8700 - 27600)
cf = cf + 350
cf = input:right(cf, 44)
cf = input:square(cf + 35, 37)
-- Sixth shoot (6000 - 33600)
cf = cf + 305
cf = input:right(cf, 76)
cf = input:square(cf + 5, 61)
-- Seventh shoot (5800 - 39400)
cf = cf + 359
cf = input:right(cf, 86)
cf = input:square(cf + 82, 46)
-- Eighth shoot (5000 - 44400)
cf = cf + 315
cf = input:square(cf + 80, 15)

return input:all()