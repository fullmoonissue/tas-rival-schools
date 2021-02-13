-- List of Lua functions available for BizHawk
-- http://tasvideos.org/Bizhawk/LuaFunctions.html#tabber

local play = require('configuration/play')

local Overlay = {}

local function framecount(fc)
    local text = string.format('Frame : %d', fc)
    gui.drawText(client.screenwidth() / 4 - string.len(text) * 5, 0, text, 'white', 'black', 15)
end

local function applySubscriptions(mediator)
    mediator:subscribe({ 'frame.displayed' }, function(fc)
        if play['currentTas'] ~= 'target-mode' then
            framecount(fc)
        end
    end)
end

Overlay.applySubscriptions = applySubscriptions

return Overlay