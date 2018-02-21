local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')
require('macro/tricks')

-- Lesson 2.4
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(19390)
macroHayatoLessons:goToLesson(19392, 2, 4)
macroHayatoLessons:skipIntroText(20187)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:steppingRight(20341)
macroTricks:throw(20348)
-- Exercice 2
input:right(20464, 17)
macroTricks:throw(20532)
-- Exercice 3
input:right(20649, 19)
macroTricks:bottomThrow(20718)
-- Exercice 4
input:right(20818, 19)
macroTricks:throw(20865)
-- Exercice 5
input:left(20981, 19)
macroTricks:bottomThrow(21050)
-- Exercice 6
input:right(21150, 19)
macroTricks:bottomThrow(21198)
-- Exercice 7
input:right(21298, 19)
macroTricks:throw(21345)
-- Exercice 8
input:right(21461, 19)
macroTricks:throw(21529)
-- Exercice 9
input:right(21645, 19)
macroTricks:bottomThrow(21714)
-- Exercice 10
input:right(21814, 19)
macroTricks:throw(21861)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(22352)

return input:all()