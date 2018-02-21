local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 6.2
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(65665)
macroHayatoLessons:goToLesson(65667, 6, 2)
macroHayatoLessons:skipIntroText(66437)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:steppingLeft(66591)
-- Exercice 2
cf = macroTricks:steppingRight(66654)
input:right(cf, 18)
macroTricks:throw(66674)
-- Exercice 3
macroTricks:textbookCombo4(66858, true)
-- Exercice 4
macroTricks:ditchOut(66984)
-- Exercice 5
macroTricks:teamUp(67056)
input:up(67363)
-- Exercice 6
cf = macroTricks:steppingLeft(67425)
input:left(cf, 35)
macroTricks:safeFall(67477)
-- Exercice 7
macroTricks:ditchInto(67540)
-- Exercice 8
macroTricks:steppingLeft(67612)
-- Exercice 9
macroTricks:highJump(67689)
-- Exercice 10
macroTricks:textbookCombo2(67771)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(68154)

return input:all()