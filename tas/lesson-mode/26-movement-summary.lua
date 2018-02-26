local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 6.1
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)

input:cross(63545)
macroLessonMode:goToLesson(63547, 6, 1)
macroLessonMode:skipIntroText(64310)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(64464)
-- Exercice 2
input:left(64536)
-- Exercice 3
input:circle(64597)
-- Exercice 4
input:square(64669)
-- Exercice 5
input:up(64747)
-- Exercice 6
input:down(64819, 6)
-- Exercice 7
input:left(64896)
-- Exercice 8
input:up(64963)
-- Exercice 9
input:circle(65029)
-- Exercice 10
input:triangle(65101)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(65479)

return input:all()