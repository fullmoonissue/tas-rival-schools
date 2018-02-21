local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')
require('macro/tricks')

-- Lesson 2.2
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(15020)
macroHayatoLessons:goToLesson(15022, 2, 2)
macroHayatoLessons:skipIntroText(15805)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:ditchInto(15959)
-- Exercice 2
macroTricks:ditchInto(16031)
-- Exercice 3
macroTricks:ditchInto(16103)
-- Exercice 4
macroTricks:ditchOut(16175)
-- Exercice 5
macroTricks:ditchOut(16247)
-- Exercice 6
macroTricks:ditchOut(16319)
-- Exercice 7
macroTricks:ditchInto(16391)
-- Exercice 8
macroTricks:ditchOut(16463)
-- Exercice 9
macroTricks:ditchInto(16535)
-- Exercice 10
macroTricks:ditchOut(16607)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(16979)

return input:all()