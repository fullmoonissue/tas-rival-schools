local Overlay = {}

-- --- --- --- --
-- Constants
-- --- --- --- --

local nbShoots = 8
-- To get the final score when combos are made, a little waiting time is required
-- (between the first head(s) and the last head(s))
local nbFramesToWaitBeforeSavingScore = 60

-- --- --- --- --
-- Variables
-- --- --- --- --

-- Current shoot
local indexShoot = nil
-- The work on variables begins only when the service mode is started
-- (to avoid getting misleading values on memory)
local isReady = false
-- Just a "keep the last value of" score
local lastScore = 0
-- @see : nbFramesToWaitBeforeSavingScore
local saveScoreAtThisFrame
-- Accumulated score (to compute score by shoot)
local sumScore = 0

-- --- --- --- --- --
-- Memory Variables
-- --- --- --- --- --

local currentRest -- number of shoots remaining
local currentScore

-- --- --- --- --- --- --
-- GUI Specific values
-- --- --- --- --- --- --

local x
local y
local scoreShown

local scoreboardWidth = 410
local scoreboardHeight = 65

local xScoreBoard = 700
local yScoreBoard = 80
local xScoreShift = 50
local xCenterShift = 11

local xHead = 660
local yHead = 195
local xHeadShift = 30
local yHeadShift = 25

-- --- --- --- --- --- --
-- TAS Specific values
-- --- --- --- --- --- --

-- Heads' location
local headsGrid = {
    { '2', ' ', '4', '2', '1', ' ', ' ', '1', ' ', ' ', '1', '2', '4', ' ', '2' },
    { '1', ' ', ' ', '3', ' ', ' ', ' ', '4', ' ', ' ', ' ', '3', ' ', ' ', '1' },
    { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
    { '4', ' ', ' ', ' ', ' ', ' ', ' ', '0', ' ', ' ', ' ', ' ', ' ', ' ', '4' },
    { ' ', '0', '4', ' ', '0', ' ', '3', '1', '3', ' ', '0', ' ', '4', ' ', '0' },
    { ' ', ' ', ' ', ' ', ' ', ' ', ' ', '4', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
    { ' ', ' ', ' ', '2', '3', ' ', ' ', ' ', ' ', ' ', '3', '2', ' ', ' ', ' ' },
    { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
    { ' ', ' ', '0', ' ', '1', ' ', ' ', ' ', ' ', ' ', '1', ' ', '0', ' ', ' ' },
    { ' ', ' ', '4', ' ', '2', ' ', ' ', '4', ' ', ' ', '2', ' ', '4', ' ', ' ' },
}
-- Heads which will be smashed per shoot
local headsByShoots = {
    {
        { line = 9, column = 3 },
        { line = 9, column = 5 },
        { line = 10, column = 3 },
        { line = 10, column = 5 },
    },
    {
        { line = 4, column = 1 },
        { line = 5, column = 2 },
        { line = 5, column = 3 },
    },
    {
        { line = 5, column = 5 },
        { line = 7, column = 4 },
        { line = 7, column = 5 },
    },
    {
        { line = 1, column = 3 },
        { line = 1, column = 4 },
        { line = 1, column = 5 },
        { line = 2, column = 4 },
    },
    {
        { line = 4, column = 8 },
        { line = 5, column = 7 },
        { line = 5, column = 8 },
        { line = 5, column = 9 },
        { line = 6, column = 8 },
    },
    {
        { line = 1, column = 11 },
        { line = 1, column = 12 },
        { line = 1, column = 13 },
        { line = 2, column = 12 },
    },
    {
        { line = 4, column = 15 },
        { line = 5, column = 13 },
        { line = 5, column = 15 },
    },
    {
        { line = 9, column = 11 },
        { line = 9, column = 13 },
        { line = 10, column = 11 },
        { line = 10, column = 13 },
    },
}
local scoreByShoots = { '-', '-', '-', '-', '-', '-', '-', '-' }

-- --- --- --
-- Overlay
-- --- --- --

local function serviceMode(fc)

    -- [[ Compute score and update heads smashed ]] --

    currentRest = memory.read_s32_le(0x1FE6D0)
    currentScore = memory.read_s32_le(0x1F1F18)

    if currentRest == 8 and currentScore == 0 then
        isReady = true
    end

    if isReady then
        -- When a change in the score is detected, we save it in a certain amount of frames
        if currentScore ~= lastScore and saveScoreAtThisFrame == nil then
            saveScoreAtThisFrame = fc + nbFramesToWaitBeforeSavingScore
        end
        -- When it's time ...
        if fc == saveScoreAtThisFrame then
            saveScoreAtThisFrame = nil
            indexShoot = math.abs(currentRest - nbShoots)
            -- ... save the score ...
            scoreByShoots[indexShoot] = currentScore - sumScore
            -- ... save the heads smashed location into the grid
            for _, headProperties in ipairs(headsByShoots[indexShoot]) do
                headsGrid[headProperties['line']][headProperties['column']] = '*'
            end
            sumScore = sumScore + scoreByShoots[indexShoot]
            lastScore = currentScore
        end
    end

    -- [[ Draw the GUI ]] --

    -- Header

    x = 750
    y = 22

    gui.drawText(x, y, '[TAS] Rival Schools - Service Mode', 'white', 'black', 15)

    -- Scoreboard (layout)

    gui.drawText(xScoreBoard, yScoreBoard - 20, 'Score by shoot', 'white', 'black', 15)
    gui.drawRectangle(xScoreBoard, yScoreBoard, scoreboardWidth, scoreboardHeight)
    gui.drawLine(
        xScoreBoard,
        math.floor(yScoreBoard + (scoreboardHeight / 2)),
        xScoreBoard + scoreboardWidth,
        math.floor(yScoreBoard + (scoreboardHeight / 2))
    )

    -- Scoreboard (values)

    x = xScoreBoard + 10
    y = yScoreBoard + 10
    for index = 1, nbShoots do
        x = x + (index == 1 and 0 or xScoreShift)
        gui.drawText(x + xCenterShift, y, index, 'white', 'black', 15)
    end

    x = xScoreBoard + 10
    y = yScoreBoard + 40
    for index = 1, nbShoots do
        x = x + (index == 1 and 0 or xScoreShift)
        scoreShown = scoreByShoots[index]
        gui.drawText(x + (scoreShown == '-' and xCenterShift or 0), y, scoreShown, 'white', 'black', 15)
    end

    -- Heads (values)

    gui.drawText(xHead + 175, yHead - 25, 'Heads location', 'white', 'black', 15)
    gui.drawText(xHead + 42, yHead - 5, '0:Raizo 1:Roberto 2:Sakura 3:Hinata 4:Shoma', 'white', 'black', 15)

    gui.drawBox(
        math.floor(xHead + (xHeadShift / 2)),
        yHead - 7,
        math.floor(xHead + xHeadShift + (#headsGrid[1] * xHeadShift)),
        yHead + yHeadShift + (#headsGrid * yHeadShift)
    )

    gui.drawLine(
        math.floor(xHead + (xHeadShift / 2)),
        yHead + 15,
        math.floor(xHead + xHeadShift + (#headsGrid[1] * xHeadShift)),
        yHead + 15
    )

    for line, columns in ipairs(headsGrid) do
        for column, value in ipairs(columns) do
            gui.drawText(xHead + (column * xHeadShift), yHead + (line * yHeadShift), value, 'white', 'black', 15)
        end
    end

    -- Heads (groups smashed)

    for index = 1, nbShoots do
        if scoreByShoots[index] ~= '-' then
            local minLine, maxLine, minColumn, maxColumn
            for _, headProperties in ipairs(headsByShoots[index]) do
                local line = headProperties['line']
                if minLine == nil or line < minLine then
                    minLine = line
                end
                if maxLine == nil or line > maxLine then
                    maxLine = line
                end

                local column = headProperties['column']
                if minColumn == nil or column < minColumn then
                    minColumn = column
                end
                if maxColumn == nil or column > maxColumn then
                    maxColumn = column
                end
            end
            gui.drawBox(
                math.floor(xHead + (minColumn * xHeadShift)),
                math.floor(yHead + (minLine * yHeadShift)),
                math.floor(xHead + (xHeadShift / 2) + (maxColumn * xHeadShift)),
                math.floor(yHead + (yHeadShift / 2) + (maxLine * yHeadShift))
            )
        end
    end

end

local function applySubscriptions(mediator)
    mediator:subscribe({ 'frame.displayed' }, function(fc)
        serviceMode(fc)
    end)
end

Overlay.applySubscriptions = applySubscriptions

return Overlay