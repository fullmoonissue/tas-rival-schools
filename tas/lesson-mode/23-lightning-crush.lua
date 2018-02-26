local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 5.3
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)

input:cross(56146)
macroLessonMode:goToLesson(56148, 5, 3)
macroLessonMode:skipIntroText(56937)
--[[
    Begin of exercices
]]
-- Exercice 1
input:square(57094)
-- Exercice 2
input:triangle(57170)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(57554)

return input:all()