local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')
require('macro/tricks')

-- Lesson 3.3
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(30486)
macroHayatoLessons:goToLesson(30488, 3, 3)
macroHayatoLessons:skipIntroText(31275)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:teamUp(31429)
input:up(31735)
-- Exercice 2
macroTricks:teamUp(31797)
input:up(32104)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(32474)

return input:all()