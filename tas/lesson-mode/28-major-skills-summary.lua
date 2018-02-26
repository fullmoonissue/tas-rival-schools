local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 6.3
local cf
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(68339)
macroLessonMode:goToLesson(68341, 6, 3)
macroLessonMode:skipIntroText(69119)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(69273, 27)
input:left(69365)
input:square(69366)
-- Exercice 2
input:right(69462)
macroTricks:textbookCombo2(69464)
input:right(69526, 28)
macroTricks:throw(69565)
-- Exercice 3
input:triangle(69636)
-- Exercice 4
macroTricks:rivalLauncher(69712)
input:up(69713)
input:square(69768)
-- Exercice 5
macroTricks:burningVigor(69880)
-- Exercice 6
cf = macroTricks:steppingRight(70067)
input:right(cf, 25)
macroTricks:ditchInto(70098)
-- Exercice 7
macroTricks:burningVigor(70196)
-- Exercice 8
cf = macroTricks:steppingRight(70402)
input:right(cf, 25)
input:triangle(70470)
-- Exercice 9
input:right(70549, 9)
macroTricks:ditchInto(70558)
-- Exercice 10 (Lightning Crush)
input:triangle(70653)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(71036)

return input:all()