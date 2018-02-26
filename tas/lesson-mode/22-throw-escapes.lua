local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 5.2
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(54364)
macroLessonMode:goToLesson(54366, 5, 2)
macroLessonMode:skipIntroText(55134)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(55292, 15)
macroTricks:throw(55380)
-- Exercice 2
input:square(55465)
macroTricks:throw(55590)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(55960)

return input:all()