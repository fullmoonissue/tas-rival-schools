local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 4.2
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(40557)
macroHayatoLessons:goToLesson(40559, 4, 2)
macroHayatoLessons:skipIntroText(41344)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(41498, 27)
input:square(41590)
-- Exercice 2
input:right(41668, 38)
input:left(41771)
input:square(41772)
-- Exercice 3
cf = macroTricks:steppingRight(41868)
input:right(cf, 36)
input:right(41971)
input:square(41972)
-- Exercice 4
cf = macroTricks:steppingRight(42074)
input:right(cf, 38)
input:left(42177)
input:square(42178)
-- Exercice 5
cf = macroTricks:steppingRight(42274)
input:right(cf, 36)
input:down(42377)
input:square(42378)
-- Exercice 6
cf = macroTricks:steppingRight(42471)
input:right(cf, 38)
input:right(42574)
input:square(42575)
-- Exercice 7
cf = macroTricks:steppingRight(42677)
input:right(cf, 38)
input:up(42780)
input:square(42781)
-- Exercice 8
cf = macroTricks:steppingRight(42858)
input:right(cf, 38)
input:down(42961)
input:square(42962)
-- Exercice 9
cf = macroTricks:steppingRight(43055)
input:right(cf, 36)
input:left(43158)
input:square(43159)
-- Exercice 10
cf = macroTricks:steppingRight(43255)
input:right(cf, 36)
input:down(43358)
input:square(43359)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(43759)

return input:all()