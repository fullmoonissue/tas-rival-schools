local input = require('core/input')

-- First shoot
local cf = 102473
cf = input:left(cf, 82)
cf = input:square(cf + 45, 2)
-- Second shoot
cf = cf + 309
cf = input:right(cf, 7)
cf = input:square(cf + 34, 52)
-- Third shoot
cf = cf + 366
cf = input:right(cf, 23)
cf = input:square(cf + 19, 32)
-- Forth shoot
cf = cf + 338
cf = input:right(cf, 10)
cf = input:square(cf + 32, 61)
-- Fifth shoot
cf = cf + 397
cf = input:right(cf, 41)
cf = input:square(cf + 86, 37)
-- Sixth shoot
cf = cf + 345
cf = input:right(cf, 39)
cf = input:square(cf + 3, 61)
-- Seventh shoot
cf = cf + 399
cf = input:right(cf, 43)
cf = input:square(cf + 83, 46)
-- Eighth shoot
cf = cf + 395
cf = input:square(cf, 15)

return input:all()