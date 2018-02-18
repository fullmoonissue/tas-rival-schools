require('utils/input')
require('utils/macro')
require('macro/hayato-lessons')

-- Lesson 1.1
local input = Input()
macroHayatoLessons = MacroHayatoLessons(Macro(input))

input:cross(2084)
macroHayatoLessons:goToLesson(2086, 1, 1)
macroHayatoLessons:skipIntroText(2858)
--[[
    Begin of exercices
]]
-- Exercice 1
input:right(3012)
-- Exercice 2
input:right(3084)
-- Exercice 3
input:right(3156)
-- Exercice 4
input:left(3228)
-- Exercice 5
input:left(3300)
-- Exercice 6
input:right(3372)
-- Exercice 7
input:right(3444)
-- Exercice 8
input:left(3516)
-- Exercice 9
input:left(3588)
-- Exercice 10
input:right(3660)
--[[
    End of exercices
]]
macroHayatoLessons:goToLessonScreen(4027)

return input:all()

--joypadSet1 = {
    --[2084] = {
    --    ["P1 Cross"] = true,
    --},
    --[2086] = {
    --    ["P1 Cross"] = true,
    --},
    --[2088] = {
    --    ["P1 Cross"] = true,
    --},
    --[2858] = {
    --    ["P1 Cross"] = true,
    --},
    --[2860] = {
    --    ["P1 Cross"] = true,
    --},
    --[3012] = {
    --    ["P1 Right"] = true,
    --},
    --[3084] = {
    --    ["P1 Right"] = true,
    --},
    --[3156] = {
    --    ["P1 Right"] = true,
    --},
    --[3228] = {
    --    ["P1 Left"] = true,
    --},
    --[3300] = {
    --    ["P1 Left"] = true,
    --},
    --[3372] = {
    --    ["P1 Right"] = true,
    --},
    --[3444] = {
    --    ["P1 Right"] = true,
    --},
    --[3516] = {
    --    ["P1 Left"] = true,
    --},
    --[3588] = {
    --    ["P1 Left"] = true,
    --},
    --[3660] = {
    --    ["P1 Right"] = true,
    --},
    --[4027] = {
    --    ["P1 Cross"] = true,
    --},
    --[4029] = {
    --    ["P1 Cross"] = true,
    --},
    --[4034] = {
    --    ["P1 Down"] = true,
    --},
    --[4036] = {
    --    ["P1 Cross"] = true,
    --},
--}