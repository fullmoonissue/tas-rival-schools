local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')
require('macro/tricks')

-- Lesson 2.3
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(17200)
macroLessonMode:goToLesson(17202, 2, 3)
macroLessonMode:skipIntroText(17965)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:highJump(18119)
-- Exercice 2
input:down(18207, 6)
-- Exercice 3
input:down(18279, 6)
-- Exercice 4
macroTricks:highJump(18351)
-- Exercice 5
macroTricks:highJump(18438)
-- Exercice 6
input:up(18526)
-- Exercice 7
input:down(18598, 6)
-- Exercice 8
input:up(18670)
-- Exercice 9
input:down(18742, 6)
-- Exercice 10
macroTricks:highJump(18814)
--[[
    End of exercices
]]
macroLessonMode:goToLessonScreen(19204)

return input:all()