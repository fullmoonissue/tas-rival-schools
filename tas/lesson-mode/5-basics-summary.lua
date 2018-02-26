local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 1.5
local input = Input()
local macroLessonMode = MacroLessonMode(Macro(input))

input:cross(10694)
macroLessonMode:goToLesson(10696, 1, 5)
macroLessonMode:skipIntroText(11471)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(11625)
-- Exercice 2
input:up(11697)
-- Exercice 3
input:circle(11769)
-- Exercice 4
input:square(11841)
-- Exercice 5
input:down(11913, 6)
-- Exercice 6
input:left(11990)
-- Exercice 7
input:triangle(12062)
-- Exercice 8
input:up(12134)
-- Exercice 9
input:cross(12206)
-- Exercice 10
input:circle(12278)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(12652)

return input:all()