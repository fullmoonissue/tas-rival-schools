local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')
require('macro/tricks')

-- Lesson 3.1
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(24970)
macroHayatoLessons:goToLesson(24972, 3, 1)
macroHayatoLessons:skipIntroText(25747)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(25901, 27)
macroTricks:safeFall(25945)
-- Exercice 2
cf = macroTricks:steppingRight(26007)
input:right(cf, 38)
macroTricks:safeFall(26064)
-- Exercice 3
cf = macroTricks:steppingRight(26126)
input:right(cf, 38)
macroTricks:safeFall(26183)
-- Exercice 4
cf = macroTricks:steppingRight(26245)
input:right(cf, 38)
macroTricks:safeFall(26302)
-- Exercice 5
cf = macroTricks:steppingRight(26364)
input:right(cf, 38)
macroTricks:safeFall(26421)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(26790)

return input:all()