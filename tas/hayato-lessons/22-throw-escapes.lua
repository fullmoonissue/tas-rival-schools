local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 5.2
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(54364)
macroHayatoLessons:goToLesson(54366, 5, 2)
macroHayatoLessons:skipIntroText(55134)
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
macroHayatoLessons:goToLessonScreen(55960)

return input:all()