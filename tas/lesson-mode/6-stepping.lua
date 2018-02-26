local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')
require('macro/tricks')

-- Lesson 2.1
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(12838)
macroLessonMode:goToLesson(12840, 2, 1)
macroLessonMode:skipIntroText(13623)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:steppingRight(13777)
-- Exercice 2
macroTricks:steppingLeft(13849)
-- Exercice 3
macroTricks:steppingRight(13921)
-- Exercice 4
macroTricks:steppingLeft(13993)
-- Exercice 5
macroTricks:steppingRight(14065)
-- Exercice 6
macroTricks:steppingRight(14137)
-- Exercice 7
macroTricks:steppingRight(14209)
-- Exercice 8
macroTricks:steppingLeft(14281)
-- Exercice 9
macroTricks:steppingLeft(14353)
-- Exercice 10
macroTricks:steppingRight(14425)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(14799)

return input:all()