require('utils/class')

MacroLessonMode = class(function(macroLessonMode, macro)
    macroLessonMode.input = macro:getInputManager()
end)

function MacroLessonMode:goToLesson(currentFrame, lesson, subLesson)
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