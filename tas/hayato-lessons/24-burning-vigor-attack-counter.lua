local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 5.4
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(57740)
macroHayatoLessons:goToLesson(57742, 5, 4)
macroHayatoLessons:skipIntroText(58524)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(58678, 7)
macroTricks:burningVigor(58685)
-- Exercice 2
cf = macroTricks:steppingRight(58897)
input:right(cf, 64)
macroTricks:burningVigor(58975)
-- Exercice 3
cf = macroTricks:steppingRight(59181)
input:right(cf, 64)
macroTricks:burningVigor(59259)
-- Exercice 4
cf = macroTricks:steppingRight(59465)
input:right(cf, 64)
macroTricks:burningVigor(59543)
-- Exercice 5
cf = macroTricks:steppingRight(59749)
input:right(cf, 64)
macroTricks:burningVigor(59827)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(60340)

return input:all()