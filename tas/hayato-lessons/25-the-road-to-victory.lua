local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 5.5
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(60525)
macroHayatoLessons:goToLesson(60527, 5, 5)
macroHayatoLessons:skipIntroText(61313)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(61467, 7)
macroTricks:burningVigor(61474)
-- Exercice 2
cf = macroTricks:steppingRight(61686)
input:right(cf, 32)
input:square(61761)
-- Exercice 3
macroTricks:ditchOut(61847)
-- Exercice 4
macroTricks:burningVigor(61947)
-- Exercice 5
cf = macroTricks:steppingLeft(62153)
input:left(cf, 23)
input:square(62228)
-- Exercice 6
macroTricks:ditchInto(62314)
-- Exercice 7
input:square(62411)
-- Exercice 8
input:square(62496)
macroTricks:throw(62621)
-- Exercice 9
macroTricks:burningVigor(62703)
-- Exercice 10
cf = macroTricks:steppingLeft(62909)
input:left(cf, 35)
input:square(62984)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(63360)

return input:all()