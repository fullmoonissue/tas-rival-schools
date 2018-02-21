local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 4.5
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(48732)
macroHayatoLessons:goToLesson(48734, 4, 5)
macroHayatoLessons:skipIntroText(49526)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:burningVigor(49680)
-- Exercice 2
cf = macroTricks:steppingRight(49875)
input:right(cf, 39)
macroTricks:rivalLauncher(49918)
input:up(49919)
input:square(49974)
-- Exercice 3
input:right(50128)
input:left(50194)
input:square(50195)
-- Exercice 4
cf = macroTricks:steppingRight(50291)
input:right(cf, 35)
macroTricks:tardyCounter(50329)
-- Exercice 5
input:right(50399, 41)
input:down(50502)
input:square(50503)
-- Exercice 6
macroTricks:burningVigor(50596)
-- Exercice 7
cf = macroTricks:steppingRight(50789)
input:right(cf, 25)
macroTricks:rivalLauncher(50845)
input:up(50846)
input:square(50901)
-- Exercice 8
macroTricks:tardyCounter(51056)
-- Exercice 9
macroTricks:burningVigor(51126)
-- Exercice 10
cf = macroTricks:steppingRight(51313)
input:right(cf, 35)
macroTricks:tardyCounter(51351)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(51728)

return input:all()