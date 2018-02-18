require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 1.4
local input = Input()
macroHayatoLessons = MacroHayatoLessons(Macro(input))

return input:all()

--joypadSet4 = {
--    [8532] = {
--        ["P1 Cross"] = true,
--    },
--    [8534] = {
--        ["P1 Cross"] = true,
--    },
--    [8536] = {
--        ["P1 Right"] = true,
--    },
--    [8538] = {
--        ["P1 Right"] = true,
--    },
--    [8540] = {
--        ["P1 Right"] = true,
--    },
--    [8542] = {
--        ["P1 Cross"] = true,
--    },
--    [9299] = {
--        ["P1 Cross"] = true,
--    },
--    [9301] = {
--        ["P1 Cross"] = true,
--    },
--    [9453] = {
--        ["P1 Circle"] = true,
--    },
--    [9525] = {
--        ["P1 Circle"] = true,
--    },
--    [9597] = {
--        ["P1 Cross"] = true,
--    },
--    [9669] = {
--        ["P1 Cross"] = true,
--    },
--    [9741] = {
--        ["P1 Circle"] = true,
--    },
--    [9813] = {
--        ["P1 Cross"] = true,
--    },
--    [9885] = {
--        ["P1 Circle"] = true,
--    },
--    [9957] = {
--        ["P1 Cross"] = true,
--    },
--    [10029] = {
--        ["P1 Circle"] = true,
--    },
--    [10101] = {
--        ["P1 Cross"] = true,
--    },
--    [10473] = {
--        ["P1 Cross"] = true,
--    },
--    [10475] = {
--        ["P1 Cross"] = true,
--    },
--    [10480] = {
--        ["P1 Down"] = true,
--    },
--    [10482] = {
--        ["P1 Cross"] = true,
--    },
--}