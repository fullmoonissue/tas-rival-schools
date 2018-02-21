local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 5.3
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)

input:cross(56146)
macroHayatoLessons:goToLesson(56148, 5, 3)
macroHayatoLessons:skipIntroText(56937)
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
macroHayatoLessons:goToLessonScreen(57554)

return input:all()