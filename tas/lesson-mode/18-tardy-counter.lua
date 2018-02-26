local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 4.3
local cf
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(43944)
macroLessonMode:goToLesson(43946, 4, 3)
macroLessonMode:skipIntroText(44733)
--[[
    Begin of exercices
]]
-- Exercice 1
cf = macroTricks:steppingRight(44887)
input:right(cf, 24)
macroTricks:tardyCounter(44914)
-- Exercice 2
macroTricks:tardyCounter(45022)
-- Exercice 3
macroTricks:tardyCounter(45130)
-- Exercice 4
macroTricks:tardyCounter(45238)
-- Exercice 5
macroTricks:tardyCounter(45346)
-- Exercice 6
macroTricks:tardyCounter(45454)
-- Exercice 7
macroTricks:tardyCounter(45562)
-- Exercice 8
macroTricks:tardyCounter(45670)
-- Exercice 9
macroTricks:tardyCounter(45778)
-- Exercice 10
macroTricks:tardyCounter(45886)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(46263)

return input:all()