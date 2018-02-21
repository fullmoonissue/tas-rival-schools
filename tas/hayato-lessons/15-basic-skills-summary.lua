local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 3.5
local cf
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(35019)
macroHayatoLessons:goToLesson(35021, 3, 5)
macroHayatoLessons:skipIntroText(35818)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(35972, 27)
macroTricks:safeFall(36016)
-- Exercice 2
macroTricks:textbookCombo2(36079)
-- Exercice 3
macroTricks:steppingRight(36153)
macroTricks:teamUp(36159)
input:up(36465)
-- Exercice 4
cf = macroTricks:steppingRight(36525)
input:right(cf, 35)
input:down(36627)
-- Exercice 5
cf = macroTricks:steppingRight(36735)
input:right(cf, 38)
macroTricks:safeFall(36792)
-- Exercice 6
macroTricks:textbookCombo4(36855)
-- Exercice 7
macroTricks:teamUp(36974)
input:up(37281)
-- Exercice 8
cf = macroTricks:steppingLeft(37343)
input:left(cf, 33)
macroTricks:safeFall(37395)
-- Exercice 9
cf = macroTricks:steppingLeft(37458)
input:left(cf, 36)
input:right(37561)
-- Exercice 10
macroTricks:textbookCombo3(37669)
--[[
--    End of exercices
--]]
macroHayatoLessons:goToLessonScreen(38063)

return input:all()