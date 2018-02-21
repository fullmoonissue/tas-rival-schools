local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 4.1
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(38248)
macroHayatoLessons:goToLesson(38250, 4, 1)
macroHayatoLessons:skipIntroText(39035)
--[[
    Begin of exercices
]]
-- Exercice 1
cf = input:right(39189, 9)
cf = macroTricks:rivalLauncher(cf + 1)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 2
cf = macroTricks:rivalLauncher(cf + 117)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 3
cf = macroTricks:rivalLauncher(cf + 117)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 4
cf = macroTricks:rivalLauncher(cf + 117)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 5
cf = macroTricks:rivalLauncher(cf + 117)
cf = input:up(cf + 1)
input:square(cf + 55)
--[[
--    End of exercices
--]]
macroHayatoLessons:goToLessonScreen(40371)

return input:all()