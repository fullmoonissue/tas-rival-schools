local Input = require('utils/input')
require('utils/macro')
require('macro/lesson-mode')

-- Lesson 6.5
local input = Input()
local macro = Macro(input)
local macroLessonMode = MacroLessonMode(macro)
local macroTricks = MacroTricks(macro)

input:cross(74276)
macroLessonMode:goToLesson(74278, 6, 5)
macroLessonMode:skipIntroText(75049)
--[[
    Begin of challenge
]]
macroTricks:teamUp(75203)
input:up(75510)
macroTricks:teamUp(75548)
input:up(75855)
macroTricks:teamUp(75893)
input:up(76200)
macroTricks:teamUp(76238)
input:up(76545)
macroTricks:teamUp(76583)
input:up(76904)
--[[
    End of challenge
]]
--macroLessonMode:goToLessonScreen(74091)

return input:all()