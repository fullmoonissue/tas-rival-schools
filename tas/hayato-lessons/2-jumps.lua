local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 1.2
local input = Input()
local macroHayatoLessons = MacroHayatoLessons(Macro(input))

input:cross(4213)
macroHayatoLessons:goToLesson(4215, 1, 2)
macroHayatoLessons:skipIntroText(4989)
--[[
    Begin of exercices
]]
-- Exercice 1
input:up(5143)
-- Exercice 2
input:up(5215)
-- Exercice 3
input:down(5287, 6)
-- Exercice 4
input:down(5359, 6)
-- Exercice 5
input:up(5431)
-- Exercice 6
input:down(5503, 6)
-- Exercice 7
input:down(5575, 6)
-- Exercice 8
input:up(5647)
-- Exercice 9
input:up(5719)
-- Exercice 10
input:down(5791, 6)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(6163)

return input:all()