require('utils/class')

Shortcut = class(function(shortcut, input)
    shortcut.input = input
end)

function Shortcut:goToLesson(currentFrame, lesson, subLesson)
    for i = 1, (lesson - 1) do
        self.input:down(currentFrame)
        currentFrame = currentFrame + 2
    end

    self.input:cross(currentFrame)

    currentFrame = currentFrame + 2

    for i = 1, (subLesson - 1) do
        self.input:right(currentFrame)
        currentFrame = currentFrame + 2
    end

    self.input:cross(currentFrame)

    return currentFrame
end

function Shortcut:skipIntroText(currentFrame)
    self.input:cross(currentFrame)

    currentFrame = currentFrame + 2
    self.input:cross(currentFrame)

    return currentFrame
end

function Shortcut:goToLessonScreen(currentFrame)
    self.input:cross(currentFrame)

    currentFrame = currentFrame + 2
    self.input:cross(currentFrame)

    currentFrame = currentFrame + 5
    self.input:down(currentFrame)

    currentFrame = currentFrame + 2
    self.input:cross(currentFrame)

    return currentFrame
end