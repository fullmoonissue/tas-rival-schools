local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 1.2
local input = Input()

macroHayatoLessons = MacroHayatoLessons(Macro(input))

return input:all()

--joypadSet2 = {
--    [4213] = {
--        ["P1 Cross"] = true,
--    },
--    [4215] = {
--        ["P1 Cross"] = true,
--    },
--    [4217] = {
--        ["P1 Right"] = true,
--    },
--    [4219] = {
--        ["P1 Cross"] = true,
--    },
--    [4989] = {
--        ["P1 Cross"] = true,
--    },
--    [4991] = {
--        ["P1 Cross"] = true,
--    },
--    -- 6 frames to detect jump or crunch (manipulate just for crouch ?)
--    [5143] = {
--        ["P1 Up"] = true,
--    },
--    [5215] = {
--        ["P1 Up"] = true,
--    },
--    [5287.6] = {
--        ["P1 Down"] = true,
--    },
--    [5359.6] = {
--        ["P1 Down"] = true,
--    },
--    [5431] = {
--        ["P1 Up"] = true,
--    },
--    [5503.6] = {
--        ["P1 Down"] = true,
--    },
--    [5575.6] = {
--        ["P1 Down"] = true,
--    },
--    [5647] = {
--        ["P1 Up"] = true,
--    },
--    [5719] = {
--        ["P1 Up"] = true,
--    },
--    [5791.6] = {
--        ["P1 Down"] = true,
--    },
--    [6163] = {
--        ["P1 Cross"] = true,
--    },
--    [6165] = {
--        ["P1 Cross"] = true,
--    },
--    [6170] = {
--        ["P1 Down"] = true,
--    },
--    [6172] = {
--        ["P1 Cross"] = true,
--    },
--}