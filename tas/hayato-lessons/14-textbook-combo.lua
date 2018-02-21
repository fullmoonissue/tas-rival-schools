local Input = require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 3.4
local input = Input()
local macro = Macro(input)
local macroHayatoLessons = MacroHayatoLessons(macro)
local macroTricks = MacroTricks(macro)

input:cross(32660)
macroHayatoLessons:goToLesson(32662, 3, 4)
macroHayatoLessons:skipIntroText(33443)
--[[
    Begin of exercices
]]
-- Exercice 1
macroTricks:textbookCombo2(33597)
-- Exercice 2
macroTricks:textbookCombo2(33673)
-- Exercice 3
macroTricks:textbookCombo3(33749)
-- Exercice 4
macroTricks:textbookCombo3(33836)
-- Exercice 5
macroTricks:textbookCombo2(33927)
-- Exercice 6
macroTricks:textbookCombo3(34005)
-- Exercice 7
macroTricks:textbookCombo4(34096)
-- Exercice 8
macroTricks:textbookCombo3(34226)
-- Exercice 9
macroTricks:textbookCombo2(34317)
-- Exercice 10
macroTricks:textbookCombo4(34395)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(34833)

return input:all()