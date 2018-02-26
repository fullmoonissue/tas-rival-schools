local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')
require('macro/tricks')

-- Lesson 3.3
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(30486)
macroLessonMode:goToLesson(30488, 3, 3)
macroLessonMode:skipIntroText(31275)
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
macroLessonMode:goToLessonScreen(32474)

return input:all()