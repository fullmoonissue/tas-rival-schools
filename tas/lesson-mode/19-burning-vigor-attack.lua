local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 4.4
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(46448)
macroLessonMode:goToLesson(46450, 4, 4)
macroLessonMode:skipIntroText(47255)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:burningVigor(47409)
-- Exercice 2
macroTricks:burningVigor(47606)
-- Exercice 3
macroTricks:burningVigor(47737)
-- Exercice 4
macroTricks:burningVigor(47907)
-- Exercice 5
macroTricks:burningVigor(48071)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(48546)

return input:all()