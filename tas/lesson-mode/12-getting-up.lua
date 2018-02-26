local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')
require('macro/tricks')

-- Lesson 3.2
local cf
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(26976)
macroLessonMode:goToLesson(26978, 3, 2)
macroLessonMode:skipIntroText(27743)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(27897, 27)
input:right(27989)
-- Exercice 2
input:right(28147)
input:up(28213)
-- Exercice 3
cf = macroTricks:steppingRight(28330)
input:right(cf, 12)
input:left(28409)
-- Exercice 4
cf = macroTricks:steppingRight(28515)
input:right(cf, 38)
input:right(28620)
-- Exercice 5
input:right(28778)
input:down(28844)
-- Exercice 6
macroTricks:steppingRight(28952)
input:right(28991)
input:up(29057)
-- Exercice 7
input:right(29152, 36)
input:left(29253)
-- Exercice 8
cf = macroTricks:steppingRight(29359)
input:right(cf, 38)
input:down(29464)
-- Exercice 9
macroTricks:steppingRight(29575)
input:right(29611)
input:right(29677)
-- Exercice 10
input:right(29835)
input:up(29901)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(30301)

return input:all()