local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 6.4
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(71221)
macroHayatoLessons:goToLesson(71223, 6, 4)
macroHayatoLessons:skipIntroText(71997)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:textbookCombo3(72151)
-- Exercice 2
macroTricks:teamUp(72239)
input:up(72546)
-- Exercice 3
input:left(72608, 35)
input:left(72708)
input:square(72709)
-- Exercice 4
macroTricks:textbookCombo2(72811)
-- Exercice 5
macroTricks:burningVigor(72884)
-- Exercice 6
cf = macroTricks:steppingLeft(73071)
input:left(cf, 31)
macroTricks:ditchInto(73104)
-- Exercice 7
macroTricks:throw(73207)
-- Exercice 8
input:left(73282)
-- Exercice 9
macroTricks:teamUp(73343)
input:up(73650)
-- Exercice 10
input:down(73718, 6)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(74091)

return input:all()