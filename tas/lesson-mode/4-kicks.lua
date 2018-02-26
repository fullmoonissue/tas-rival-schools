local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 1.4
local input = Input()
local macroLessonMode = MacroLessonMode(Macro(input))

input:cross(8532)
macroLessonMode:goToLesson(8534, 1, 4)
macroLessonMode:skipIntroText(9299)
--[[
    Begin of exercices
]]
-- Exercice 1
input:circle(9453)
-- Exercice 2
input:circle(9525)
-- Exercice 3
input:cross(9597)
-- Exercice 4
input:cross(9669)
-- Exercice 5
input:circle(9741)
-- Exercice 6
input:cross(9813)
-- Exercice 7
input:circle(9885)
-- Exercice 8
input:cross(9957)
-- Exercice 9
input:circle(10029)
-- Exercice 10
input:cross(10101)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(10473)

return input:all()