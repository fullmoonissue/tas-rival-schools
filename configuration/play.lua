-- Savestate's slot to load when BizHawk is rebooted
-- Requirements : have to be an integer between 0 and 9
local loadSlot = nil

-- Current Tas
-- Requirements : have to be a string (and the name of a folder in the tas folder)
--[[
    Values :
    * home-run-mode : Play in the Home Run Contest (with Shoma)
    * lesson-mode : Hayato will teach you the skills you need to know to become a master
    * shoot-out-mode : Play in the penalty kick shoot-out (with Roberto)
]]
local currentTas = 'home-run-mode'

return {
    ['currentTas'] = currentTas,
    ['loadSlot'] = loadSlot,
    ['home-run-mode'] = {
        ['show-overlay'] = false,
        ['benchmark'] = false,
        ['show-benchmark-overlay'] = false,
    },
}