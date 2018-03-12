require('utils/class')

MacroLessonMode = class(function(macroLessonMode, macro)
    macroLessonMode.input = macro:getInputManager()
end)

function MacroLessonMode:goToLesson(currentFrame, lesson, subLesson)
    if lesson < 4 then
        for i = 1, (lesson - 1) do
            self.input:down(currentFrame)
            currentFrame = currentFrame + 2
        end
    else
        for i = 6, lesson, -1 do
            self.input:up(currentFrame)
            currentFrame = currentFrame + 2
        end
    end

    self.input:cross(currentFrame)

    currentFrame = currentFrame + 2

    if subLesson < 4 then
        for i = 1, (subLesson - 1) do
            self.input:right(currentFrame)
            currentFrame = currentFrame + 2
        end
    else
        for i = 5, subLesson, -1 do
            self.input:left(currentFrame)
            currentFrame = currentFrame + 2
        end
    end

    self.input:cross(currentFrame)

    return currentFrame
end

function MacroLessonMode:skipIntroText(currentFrame)
    self.input:cross(currentFrame)

    currentFrame = currentFrame + 2
    self.input:cross(currentFrame)

    return currentFrame
end

function MacroLessonMode:goToLessonScreen(currentFrame)
    self.input:cross(currentFrame)

    currentFrame = currentFrame + 2
    self.input:cross(currentFrame)

    currentFrame = currentFrame + 5
    self.input:down(currentFrame)

    currentFrame = currentFrame + 2
    self.input:cross(currentFrame)

    return currentFrame
end