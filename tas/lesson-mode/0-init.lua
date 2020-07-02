local input = require('core/input')

-- Init
local cf = 1385

cf = input:start(cf)
cf = input:start(cf + 123)
cf = input:start(cf + 42)
cf = input:start(cf + 50)
cf = input:left(cf + 111)
cf = input:cross(cf + 1)

cf = input:right(cf + 97)
cf = input:cross(cf + 1)
cf = input:left(cf + 1)
cf = input:down(cf + 1)
cf = input:left(cf + 1)
cf = input:left(cf + 2)
cf = input:cross(cf + 1)

return input:all()