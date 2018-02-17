require('utils/input')

-- Init
local input = Input()

-- Skip the autoload from memory card
input:start(1385)
input:start(1508)
input:start(1550)
input:start(1600)
input:left(1711)
input:cross(1712)
input:down(1809)
input:right(1810)
input:right(1811)
input:right(1813)
input:right(1815)
input:cross(1816)
input:right(1817)
input:right(1819)
input:cross(1820)

return input:all()

--joypadSet0 = {
--    [1385] = {
--        ["P1 Start"] = true,
--    },
--    [1508] = {
--        ["P1 Start"] = true,
--    },
--    [1550] = {
--        ["P1 Start"] = true,
--    },
--    [1600] = {
--        ["P1 Start"] = true,
--    },
--    [1711] = {
--        ["P1 Left"] = true,
--    },
--    [1712] = {
--        ["P1 Cross"] = true,
--    },
--    [1809] = {
--        ["P1 Down"] = true,
--    },
--    [1810] = {
--        ["P1 Right"] = true,
--    },
--    [1811] = {
--        ["P1 Right"] = true,
--    },
--    [1813] = {
--        ["P1 Right"] = true,
--    },
--    [1815] = {
--        ["P1 Right"] = true,
--    },
--    [1816] = {
--        ["P1 Cross"] = true,
--    },
--    [1817] = {
--        ["P1 Right"] = true,
--    },
--    [1819] = {
--        ["P1 Right"] = true,
--    },
--    [1820] = {
--        ["P1 Cross"] = true,
--    },
--}