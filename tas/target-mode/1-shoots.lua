local input = require('core/input')

local cf

-- First shoot (Score : 2600 ; Total : 2600)
cf = 102402
input:right(cf, 27)
cf = input:up(cf, 57)
cf = input:cross(cf + 1)
input:down(cf + 1, 45)
cf = input:left(cf + 1, 46)

-- Second shoot (Score : 2600 ; Total : 5200)
cf = cf + 304
input:l1(cf)
input:left(cf, 27)
cf = input:up(cf, 59)
cf = input:cross(cf + 1)
input:down(cf + 1, 45)
cf = input:right(cf + 1, 46)

-- Third shoot (Score : 1200 ; Total : 6400)
cf = cf + 304
input:l1(cf)
input:l1(cf + 2)
input:right(cf, 30)
cf = input:up(cf, 40)
cf = input:cross(cf + 1)
input:down(cf + 1, 2)
cf = input:left(cf + 1, 45)

-- Fourth shoot (Score : 1200 ; Total : 7600)
cf = cf + 188
input:l1(cf)
input:l1(cf + 2)
input:l1(cf + 4)
input:left(cf, 31)
cf = input:up(cf, 41)
cf = input:cross(cf + 1)
input:down(cf + 1, 3)
cf = input:right(cf + 1, 47)

-- Fifth shoot (Score : 900 ; Total : 8500)
cf = cf + 188
input:l1(cf)
input:l1(cf + 2)
input:l1(cf + 4)
input:l1(cf + 6)
input:right(cf, 30)
cf = input:up(cf, 50)
cf = input:cross(cf + 1)
input:down(cf + 1, 10)
cf = input:left(cf + 1, 30)

-- Sixth shoot (Score : 500 ; Total : 9000)
cf = cf + 202
input:right(cf, 30)
cf = input:up(cf, 25)
cf = input:cross(cf + 1)
input:up(cf + 1, 59)
cf = input:left(cf + 1, 20)

return input:all()