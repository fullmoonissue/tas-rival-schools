local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')
require('macro/tricks')

-- Lesson 2.5
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(22537)
macroHayatoLessons:goToLesson(22539, 2, 5)
macroHayatoLessons:skipIntroText(23306)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:steppingRight(23460)
-- Exercice 2
macroTricks:highJump(23534)
-- Exercice 3
macroTricks:ditchOut(23616)
-- Exercice 4
macroTricks:steppingLeft(23688)
-- Exercice 5
input:right(23715, 19)
macroTricks:bottomThrow(23761)
-- Exercice 6
macroTricks:ditchInto(23879)
-- Exercice 7
input:left(23900, 19)
macroTricks:throw(23951)
-- Exercice 8
macroTricks:highJump(24140)
-- Exercice 9
macroTricks:steppingRight(24220)
-- Exercice 10
macroTricks:steppingLeft(24235)
input:left(24265, 15)
macroTricks:throw(24294)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(24785)

return input:all()