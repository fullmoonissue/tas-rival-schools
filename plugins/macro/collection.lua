local Macro = {}
local bhc = require('plugins/bizhawk/configuration')
local input = require('core/input')

-- --- --- --- --
-- Lesson mode --
-- --- --- --- --

Macro.goToLesson = function(currentFrame, lesson, subLesson)
    if lesson < 4 then
        for _ = 1, (lesson - 1) do
            input:down(currentFrame)
            currentFrame = currentFrame + 2
        end
    else
        for _ = 6, lesson, -1 do
            input:up(currentFrame)
            currentFrame = currentFrame + 2
        end
    end

    input:cross(currentFrame)

    currentFrame = currentFrame + 2

    if subLesson < 4 then
        for _ = 1, (subLesson - 1) do
            input:right(currentFrame)
            currentFrame = currentFrame + 2
        end
    else
        for _ = 5, subLesson, -1 do
            input:left(currentFrame)
            currentFrame = currentFrame + 2
        end
    end

    input:cross(currentFrame)

    return currentFrame
end

Macro.skipIntroText = function(currentFrame)
    input:cross(currentFrame)

    currentFrame = currentFrame + 2
    input:cross(currentFrame)

    return currentFrame
end

Macro.goToLessonScreen = function(currentFrame)
    input:cross(currentFrame)

    currentFrame = currentFrame + 2
    input:cross(currentFrame)

    currentFrame = currentFrame + 5
    input:down(currentFrame)

    currentFrame = currentFrame + 2
    input:cross(currentFrame)

    return currentFrame
end

-- --- --- --
-- Tricks  --
-- --- --- --

Macro.crouch = function(currentFrame)
    return input:down(currentFrame, 6)
end

Macro.steppingLeft = function(currentFrame)
    input:left(currentFrame)

    currentFrame = currentFrame + 2
    input:left(currentFrame)

    return currentFrame
end

Macro.steppingRight = function(currentFrame)
    input:right(currentFrame)

    currentFrame = currentFrame + 2
    input:right(currentFrame)

    return currentFrame
end

Macro.ditchInto = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadCircle(input.currentPlayer)] = true,
            [bhc.joypadCross(input.currentPlayer)] = true,
        }
    )
end

Macro.ditchOut = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadDown(input.currentPlayer)] = true,
            [bhc.joypadCircle(input.currentPlayer)] = true,
            [bhc.joypadCross(input.currentPlayer)] = true,
        }
    )
end

Macro.highJump = function(currentFrame)
    input:down(currentFrame)

    currentFrame = currentFrame + 1
    input:up(currentFrame)

    return currentFrame
end

Macro.throw = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadSquare(input.currentPlayer)] = true,
            [bhc.joypadTriangle(input.currentPlayer)] = true,
        }
    )
end

Macro.bottomThrow = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadDown(input.currentPlayer)] = true,
            [bhc.joypadSquare(input.currentPlayer)] = true,
            [bhc.joypadTriangle(input.currentPlayer)] = true,
        }
    )
end

Macro.safeFall = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadCircle(input.currentPlayer)] = true,
            [bhc.joypadSquare(input.currentPlayer)] = true,
        }
    )
end

Macro.teamUp = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadCross(input.currentPlayer)] = true,
            [bhc.joypadSquare(input.currentPlayer)] = true,
        }
    )
end

Macro.hinataTextbookCombo2 = function(currentFrame)
    input:cross(currentFrame)

    currentFrame = currentFrame + 2
    input:square(currentFrame)

    return currentFrame
end

Macro.hinataTextbookCombo3 = function(currentFrame)
    currentFrame = Macro.hinataTextbookCombo2(currentFrame)

    currentFrame = currentFrame + 21
    input:triangle(currentFrame)

    return currentFrame
end

Macro.hinataTextbookCombo4 = function(currentFrame, reverse)
    currentFrame = Macro.hinataTextbookCombo3(currentFrame)

    currentFrame = currentFrame + 14
    input:add(
        currentFrame,
        1,
        {
            [(reverse or false) and bhc.joypadLeft(input.currentPlayer) or bhc.joypadRight(input.currentPlayer)] = true,
            [bhc.joypadTriangle(input.currentPlayer)] = true,
        }
    )

    return currentFrame
end

Macro.hinataRivalLauncher = function(frame, reverse)
    return input:add(
        frame,
        1,
        {
            [bhc.joypadDown(input.currentPlayer)] = true,
            [(reverse or false) and bhc.joypadLeft(input.currentPlayer) or bhc.joypadRight(input.currentPlayer)] = true,
            [bhc.joypadCircle(input.currentPlayer)] = true,
        }
    )
end

Macro.hinataTardyCounter = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadRight(input.currentPlayer)] = true,
            [bhc.joypadTriangle(input.currentPlayer)] = true,
        }
    )
end

Macro.burningVigor = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadL1(input.currentPlayer)] = true,
        }
    )
end

Macro.upLeft = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadUp(input.currentPlayer)] = true,
            [bhc.joypadLeft(input.currentPlayer)] = true,
        }
    )
end

Macro.upRight = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadUp(input.currentPlayer)] = true,
            [bhc.joypadRight(input.currentPlayer)] = true,
        }
    )
end

Macro.downLeft = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadDown(input.currentPlayer)] = true,
            [bhc.joypadLeft(input.currentPlayer)] = true,
        }
    )
end

Macro.downRight = function(frame, iterations)
    return input:add(
        frame,
        iterations,
        {
            [bhc.joypadDown(input.currentPlayer)] = true,
            [bhc.joypadRight(input.currentPlayer)] = true,
        }
    )
end

return Macro