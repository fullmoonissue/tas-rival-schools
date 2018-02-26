local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 1.1
local input = Input()
local macroLessonMode = MacroLessonMode(Macro(input))

input:cross(2084)
macroLessonMode:goToLesson(2086, 1, 1)
macroLessonMode:skipIntroText(2858)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(3012)
-- Exercice 2
input:right(3084)
-- Exercice 3
input:right(3156)
-- Exercice 4
input:left(3228)
-- Exercice 5
input:left(3300)
-- Exercice 6
input:right(3372)
-- Exercice 7
input:right(3444)
-- Exercice 8
input:left(3516)
-- Exercice 9
input:left(3588)
-- Exercice 10
input:right(3660)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(4027)

return input:all()