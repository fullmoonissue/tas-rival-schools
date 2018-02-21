local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 5.1
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(51913)
macroHayatoLessons:goToLesson(51915, 5, 1)
macroHayatoLessons:skipIntroText(52702)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(52870, 27)
macroTricks:ditchInto(52891)
-- Exercice 2
macroTricks:ditchInto(52983)
-- Exercice 3
macroTricks:ditchInto(53083)
-- Exercice 4
macroTricks:ditchInto(53184)
-- Exercice 5
macroTricks:ditchInto(53284)
-- Exercice 6
macroTricks:ditchInto(53383)
-- Exercice 7
macroTricks:ditchInto(53484)
-- Exercice 8
macroTricks:ditchInto(53583)
-- Exercice 9
macroTricks:ditchInto(53684)
-- Exercice 10
macroTricks:ditchInto(53783)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(54179)

return input:all()