local input = require('core/input')
local macro = require('plugins/macro/collection')

-- Lesson 1.1 (Basic movement)

local cf = 2080
cf = input:cross(cf)
cf = macro.goToLesson(cf + 2, 1, 1)
cf = macro.skipIntroText(cf + 768)

-- Exercice 1
cf = input:right(cf + 152)
-- Exercice 2
cf = input:right(cf + 72)
-- Exercice 3
cf = input:right(cf + 72)
-- Exercice 4
cf = input:left(cf + 72)
-- Exercice 5
cf = input:left(cf + 72)
-- Exercice 6
cf = input:right(cf + 72)
-- Exercice 7
cf = input:right(cf + 72)
-- Exercice 8
cf = input:left(cf + 72)
-- Exercice 9
cf = input:left(cf + 72)
-- Exercice 10
cf = input:right(cf + 72)

cf = macro.goToLessonScreen(cf + 370)

-- Lesson 1.2 (Jumps)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 1, 2)
cf = macro.skipIntroText(cf + 802)

-- Exercice 1
cf = macro.crouch(cf + 152)
-- Exercice 2
cf = macro.crouch(cf + 67)
-- Exercice 3
cf = input:up(cf + 62)
-- Exercice 4
cf = input:up(cf + 72)
-- Exercice 5
cf = macro.crouch(cf + 72)
-- Exercice 6
cf = input:up(cf + 67)
-- Exercice 7
cf = input:up(cf + 72)
-- Exercice 8
cf = macro.crouch(cf + 72)
-- Exercice 9
cf = input:up(cf + 67)
-- Exercice 10
cf = input:up(cf + 72)

cf = macro.goToLessonScreen(cf + 372)

-- Lesson 1.3 (Punches)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 1, 3)
cf = macro.skipIntroText(cf + 809)

-- Exercice 1
cf = input:square(cf + 152)
-- Exercice 2
cf = input:triangle(cf + 72)
-- Exercice 3
cf = input:square(cf + 72)
-- Exercice 4
cf = input:triangle(cf + 72)
-- Exercice 5
cf = input:triangle(cf + 72)
-- Exercice 6
cf = input:triangle(cf + 72)
-- Exercice 7
cf = input:square(cf + 72)
-- Exercice 8
cf = input:square(cf + 72)
-- Exercice 9
cf = input:triangle(cf + 72)
-- Exercice 10
cf = input:square(cf + 72)

cf = macro.goToLessonScreen(cf + 372)

-- Lesson 1.4 (Kicks)

cf = input:cross(cf + 210)
cf = macro.goToLesson(cf + 2, 1, 4)
cf = macro.skipIntroText(cf + 771)

-- Exercice 1
cf = input:circle(cf + 152)
-- Exercice 2
cf = input:circle(cf + 72)
-- Exercice 3
cf = input:cross(cf + 72)
-- Exercice 4
cf = input:cross(cf + 72)
-- Exercice 5
cf = input:circle(cf + 72)
-- Exercice 6
cf = input:cross(cf + 72)
-- Exercice 7
cf = input:circle(cf + 72)
-- Exercice 8
cf = input:cross(cf + 72)
-- Exercice 9
cf = input:circle(cf + 72)
-- Exercice 10
cf = input:cross(cf + 72)

cf = macro.goToLessonScreen(cf + 372)

-- Lesson 1.5 (Basics summary)

cf = input:cross(cf + 212)
cf = macro.goToLesson(cf + 2, 1, 5)
cf = macro.skipIntroText(cf + 803)

-- Exercice 1
cf = input:circle(cf + 152)
-- Exercice 2
cf = input:left(cf + 72)
-- Exercice 3
cf = input:square(cf + 72)
-- Exercice 4
cf = input:up(cf + 67)
-- Exercice 5
cf = input:cross(cf + 72)
-- Exercice 6
cf = input:triangle(cf + 72)
-- Exercice 7
cf = input:right(cf + 77)
-- Exercice 8
cf = input:up(cf + 67)
-- Exercice 9
cf = input:cross(cf + 72)
-- Exercice 10
cf = macro.crouch(cf + 72)

cf = macro.goToLessonScreen(cf + 372)

-- Lesson 2.1 (Stepping)

cf = input:cross(cf + 212)
cf = macro.goToLesson(cf + 2, 2, 1)
cf = macro.skipIntroText(cf + 805)

-- Exercice 1
cf = macro.steppingLeft(cf + 152)
-- Exercice 2
cf = macro.steppingLeft(cf + 72)
-- Exercice 3
cf = macro.steppingRight(cf + 72)
-- Exercice 4
cf = macro.steppingRight(cf + 72)
-- Exercice 5
cf = macro.steppingLeft(cf + 72)
-- Exercice 6
cf = macro.steppingLeft(cf + 72)
-- Exercice 7
cf = macro.steppingLeft(cf + 72)
-- Exercice 8
cf = macro.steppingRight(cf + 72)
-- Exercice 9
cf = macro.steppingRight(cf + 72)
-- Exercice 10
cf = macro.steppingLeft(cf + 72)

cf = macro.goToLessonScreen(cf + 372)

-- Lesson 2.2 (Ditch)

cf = input:cross(cf + 210)
cf = macro.goToLesson(cf + 2, 2, 2)
cf = macro.skipIntroText(cf + 781)

-- Exercice 1
cf = macro.ditchInto(cf + 152)
-- Exercice 2
cf = macro.ditchInto(cf + 72)
-- Exercice 3
cf = macro.ditchOut(cf + 72)
-- Exercice 4
cf = macro.ditchOut(cf + 72)
-- Exercice 5
cf = macro.ditchInto(cf + 72)
-- Exercice 6
cf = macro.ditchOut(cf + 72)
-- Exercice 7
cf = macro.ditchInto(cf + 72)
-- Exercice 8
cf = macro.ditchOut(cf + 72)
-- Exercice 9
cf = macro.ditchOut(cf + 72)
-- Exercice 10
cf = macro.ditchInto(cf + 72)

cf = macro.goToLessonScreen(cf + 372)

-- Lesson 2.3 (Jumping summary)

cf = input:cross(cf + 210)
cf = macro.goToLesson(cf + 2, 2, 3)
cf = macro.skipIntroText(cf + 773)

-- Exercice 1
cf = macro.highJump(cf + 152)
-- Exercice 2
cf = input:up(cf + 87)
-- Exercice 3
cf = macro.crouch(cf + 72)
-- Exercice 4
cf = macro.highJump(cf + 72)
-- Exercice 5
cf = input:up(cf + 87)
-- Exercice 6
cf = macro.crouch(cf + 72)
-- Exercice 7
cf = macro.highJump(cf + 72)
-- Exercice 8
cf = macro.crouch(cf + 87)
-- Exercice 9
cf = input:up(cf + 72)
-- Exercice 10
cf = macro.highJump(cf + 72)

cf = macro.goToLessonScreen(cf + 389)

-- Lesson 2.4 (Throws)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 2, 4)
cf = macro.skipIntroText(cf + 787)

-- Exercice 1
cf = macro.steppingRight(cf + 152)
cf = macro.bottomThrow(cf + 5)
-- Exercice 2
cf = input:left(cf + 220, 17)
cf = macro.throw(cf + 12)
-- Exercice 3
cf = input:left(cf + 130, 22)
cf = macro.bottomThrow(cf + 34)
-- Exercice 4
cf = input:right(cf + 220, 17)
cf = macro.throw(cf + 13)
-- Exercice 5
cf = input:left(cf + 130, 22)
cf = macro.throw(cf + 33)
-- Exercice 6
cf = input:right(cf + 130, 22)
cf = macro.throw(cf + 33)
-- Exercice 7
cf = input:left(cf + 130, 22)
cf = macro.bottomThrow(cf + 34)
-- Exercice 8
cf = input:right(cf + 220, 17)
cf = macro.bottomThrow(cf + 14)
-- Exercice 9
cf = input:right(cf + 220, 17)
cf = macro.throw(cf + 13)
-- Exercice 10
cf = input:right(cf + 130, 22)
cf = macro.throw(cf + 33)

cf = macro.goToLessonScreen(cf + 491)

-- Lesson 2.5 (Unique moves summary)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 2, 5)
cf = macro.skipIntroText(cf + 777)

-- Exercice 1
cf = macro.steppingLeft(cf + 152)
-- Exercice 2
cf = macro.ditchInto(cf + 61)
-- Exercice 3
cf = macro.ditchInto(cf + 72)
-- Exercice 4
cf = macro.highJump(cf + 77)
-- Exercice 5
cf = macro.steppingRight(cf + 79)
-- Exercice 6
cf = input:right(cf + 72, 7)
cf = macro.throw(cf + 1)
cf = input:right(cf + 130, 22)
-- Exercice 7
cf = macro.ditchOut(cf + 34)
-- Exercice 8
cf = macro.highJump(cf + 77)
-- Exercice 9
cf = macro.bottomThrow(cf + 82)
-- Exercice 10
cf = macro.steppingLeft(cf + 247)

cf = macro.goToLessonScreen(cf + 379)

-- Lesson 3.1 (Safe fall)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 3, 1)
cf = macro.skipIntroText(cf + 799)

-- Exercice 1
cf = input:right(cf + 152, 27)
cf = macro.safeFall(cf + 18)
-- Exercice 2
cf = macro.steppingRight(cf + 63)
cf = input:right(cf, 38)
cf = macro.safeFall(cf + 16)
-- Exercice 3
cf = macro.steppingRight(cf + 63)
cf = input:right(cf, 38)
cf = macro.safeFall(cf + 16)
-- Exercice 4
cf = macro.steppingRight(cf + 63)
cf = input:right(cf, 38)
cf = macro.safeFall(cf + 16)
-- Exercice 5
cf = macro.steppingRight(cf + 63)
cf = input:right(cf, 38)
cf = macro.safeFall(cf + 16)

cf = macro.goToLessonScreen(cf + 369)

-- Lesson 3.2 (Getting up)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 3, 2)
cf = macro.skipIntroText(cf + 800)

-- Exercice 1
cf = input:right(cf + 152, 27)
cf = input:left(cf + 66)
-- Exercice 2
cf = macro.steppingRight(cf + 106)
cf = input:right(cf, 38)
cf = input:left(cf + 66)
-- Exercice 3
cf = macro.steppingRight(cf + 106)
cf = input:right(cf, 38)
cf = input:up(cf + 66)
-- Exercice 4
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 24)
cf = input:down(cf + 66)
-- Exercice 5
cf = macro.steppingRight(cf + 108)
cf = input:right(cf, 38)
cf = input:right(cf + 66)
-- Exercice 6
cf = input:right(cf + 150, 10)
cf = input:left(cf + 65)
-- Exercice 7
cf = macro.steppingRight(cf + 106)
cf = input:right(cf, 38)
cf = input:right(cf + 66)
-- Exercice 8
cf = input:right(cf + 150, 10)
cf = input:down(cf + 65)
-- Exercice 9
cf = macro.steppingRight(cf + 108)
cf = input:right(cf, 38)
cf = input:down(cf + 66)
-- Exercice 10
cf = macro.steppingRight(cf + 108)
cf = input:right(cf, 38)
cf = input:right(cf + 66)

cf = macro.goToLessonScreen(cf + 428)

-- Lesson 3.3 (Team up technique)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 3, 3)
cf = macro.skipIntroText(cf + 795)

-- Exercice 1
cf = input:right(cf + 152, 4)
cf = macro.teamUp(cf + 1)
-- Exercice 2
cf = macro.teamUp(cf + 326)

cf = macro.goToLessonScreen(cf + 633)

-- Lesson 3.4 (Textbook combo)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 3, 4)
cf = macro.skipIntroText(cf + 785)

-- Exercice 1
cf = macro.hinataTextbookCombo2(cf + 152)
-- Exercice 2
cf = macro.hinataTextbookCombo2(cf + 79)
-- Exercice 3
cf = macro.hinataTextbookCombo3(cf + 79)
-- Exercice 4
cf = macro.hinataTextbookCombo3(cf + 74)
-- Exercice 5
cf = macro.hinataTextbookCombo2(cf + 74)
-- Exercice 6
cf = macro.hinataTextbookCombo3(cf + 81)
-- Exercice 7
cf = macro.hinataTextbookCombo4(cf + 74)
-- Exercice 8
cf = macro.hinataTextbookCombo3(cf + 92)
-- Exercice 9
cf = macro.hinataTextbookCombo2(cf + 74)
-- Exercice 10
cf = macro.hinataTextbookCombo4(cf + 81)

cf = macro.goToLessonScreen(cf + 399)

-- Lesson 3.5 (Basic skills)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 3, 5)
cf = macro.skipIntroText(cf + 785)

-- Exercice 1
cf = macro.hinataTextbookCombo3(cf + 152)
-- Exercice 2
cf = input:right(cf + 72, 36)
cf = input:left(cf + 66)
-- Exercice 3
cf = macro.steppingRight(cf + 106)
cf = input:right(cf, 38)
cf = macro.safeFall(cf + 18)
-- Exercice 4
cf = macro.steppingRight(cf + 63)
cf = input:right(cf, 13)
cf = macro.teamUp(cf + 1)
-- Exercice 5
cf = input:left(cf + 326, 40)
cf = input:left(cf + 64)
-- Exercice 6
cf = macro.hinataTextbookCombo2(cf + 121)
-- Exercice 7
cf = input:left(cf + 81, 40)
cf = input:up(cf + 64)
-- Exercice 8
cf = macro.hinataTextbookCombo2(cf + 93)
-- Exercice 9
cf = macro.hinataTextbookCombo4(cf + 79, true)
-- Exercice 10
cf = input:left(cf + 86, 40)
cf = macro.safeFall(cf + 16)

cf = macro.goToLessonScreen(cf + 370)

-- Lesson 4.1 (Rival Launcher)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 4, 1)
cf = macro.skipIntroText(cf + 769)

-- Exercice 1
cf = input:right(cf + 152, 9)
cf = macro.hinataRivalLauncher(cf + 1)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 2
cf = macro.hinataRivalLauncher(cf + 117)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 3
cf = macro.hinataRivalLauncher(cf + 117)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 4
cf = macro.hinataRivalLauncher(cf + 117)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 5
cf = macro.hinataRivalLauncher(cf + 117)
cf = input:up(cf + 1)
cf = input:square(cf + 55)

cf = macro.goToLessonScreen(cf + 423)

-- Lesson 4.2 (Get up attack)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 4, 2)
cf = macro.skipIntroText(cf + 793)

-- Exercice 1
cf = input:right(cf + 152, 27)
cf = input:left(cf + 66)
cf = input:square(cf + 1)
-- Exercice 2
cf = macro.steppingRight(cf + 106)
cf = input:right(cf, 38)
cf = input:left(cf + 54)
cf = input:square(cf + 1)
-- Exercice 3
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:up(cf + 38)
cf = input:square(cf + 1)
-- Exercice 4
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:down(cf + 22)
cf = input:square(cf + 1)
-- Exercice 5
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:right(cf + 36)
cf = input:square(cf + 1)
-- Exercice 6
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:left(cf + 45)
cf = input:square(cf + 1)
-- Exercice 7
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:right(cf + 39)
cf = input:square(cf + 1)
-- Exercice 8
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:down(cf + 45)
cf = input:square(cf + 1)
-- Exercice 9
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:down(cf + 36)
cf = input:square(cf + 1)
-- Exercice 10
cf = macro.steppingRight(cf + 105)
cf = input:right(cf, 54)
cf = input:right(cf + 36)
cf = input:square(cf + 1)

cf = macro.goToLessonScreen(cf + 409)

-- Lesson 4.3 (Tardy Counter)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 4, 3)
cf = macro.skipIntroText(cf + 800)

-- Exercice 1
cf = macro.steppingRight(cf + 152)
cf = input:right(cf, 24)
cf = macro.hinataTardyCounter(cf + 2)
-- Exercice 2
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 3
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 4
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 5
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 6
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 7
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 8
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 9
cf = macro.hinataTardyCounter(cf + 116)
-- Exercice 10
cf = macro.hinataTardyCounter(cf + 116)

cf = macro.goToLessonScreen(cf + 385)

-- Lesson 4.4 (Burning Vigor attack)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 4, 4)
cf = macro.skipIntroText(cf + 768)

-- Exercice 1
cf = macro.burningVigor(cf + 152)
-- Exercice 2
cf = macro.burningVigor(cf + 124)
-- Exercice 3
cf = macro.burningVigor(cf + 124)
-- Exercice 4
cf = macro.burningVigor(cf + 124)
-- Exercice 5
cf = macro.burningVigor(cf + 124)

cf = macro.goToLessonScreen(cf + 435)

-- Lesson 4.5 (Expert skill summary)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 4, 5)
cf = macro.skipIntroText(cf + 770)

-- Exercice 1
cf = input:right(cf + 152, 9)
cf = macro.hinataRivalLauncher(cf + 1)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 2
cf = input:right(cf + 130, 30)
cf = input:right(cf + 59)
cf = input:square(cf + 1)
-- Exercice 3
cf = macro.hinataTardyCounter(cf + 140)
-- Exercice 4
cf = macro.burningVigor(cf + 73)
-- Exercice 5
cf = input:right(cf + 180, 35)
cf = input:up(cf + 66)
cf = input:square(cf + 1)
-- Exercice 6
cf = input:right(cf + 90, 10)
cf = macro.hinataTardyCounter(cf + 16)
-- Exercice 7
cf = macro.hinataRivalLauncher(cf + 101)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 8
cf = macro.burningVigor(cf + 110)
-- Exercice 9
cf = input:right(cf + 180, 10)
cf = macro.hinataTardyCounter(cf + 27)
-- Exercice 10
cf = macro.hinataRivalLauncher(cf + 76)
cf = input:up(cf + 1)
cf = input:square(cf + 55)

cf = macro.goToLessonScreen(cf + 422)

-- Lesson 5.1 (Ditch'n spin)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 5, 1)
cf = macro.skipIntroText(cf + 792)

-- Exercice 1
cf = input:right(cf + 156, 27)
cf = macro.ditchInto(cf + 1)
-- Exercice 2
cf = macro.ditchInto(cf + 93)
-- Exercice 3
cf = macro.ditchInto(cf + 100)
-- Exercice 4
cf = macro.ditchInto(cf + 100)
-- Exercice 5
cf = macro.ditchInto(cf + 100)
-- Exercice 6
cf = macro.ditchInto(cf + 100)
-- Exercice 7
cf = macro.ditchInto(cf + 100)
-- Exercice 8
cf = macro.ditchInto(cf + 100)
-- Exercice 9
cf = macro.ditchInto(cf + 99)
-- Exercice 10
cf = macro.ditchInto(cf + 100)

cf = macro.goToLessonScreen(cf + 396)

-- Lesson 5.2 (Throw escapes)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 5, 2)
cf = macro.skipIntroText(cf + 810)

-- Exercice 1
cf = input:right(cf + 190, 30)
cf = macro.throw(cf + 25)
-- Exercice 2
cf = input:circle(cf + 85)
cf = macro.throw(cf + 145)

cf = macro.goToLessonScreen(cf + 369)

-- Lesson 5.3 (Lightning crush)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 5, 3)
cf = macro.skipIntroText(cf + 789)

-- Exercice 1
cf = input:square(cf + 157)
-- Exercice 2
cf = input:triangle(cf + 76)

cf = macro.goToLessonScreen(cf + 384)

-- Lesson 5.4 (Burning Vigor attack counter)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 5, 4)
cf = macro.skipIntroText(cf + 796)

-- Exercice 1
cf = input:right(cf + 154, 10)
cf = macro.burningVigor(cf + 1)
-- Exercice 2
cf = macro.steppingRight(cf + 144)
cf = macro.burningVigor(cf + 31)
-- Exercice 3
cf = macro.steppingRight(cf + 144)
cf = macro.burningVigor(cf + 31)
-- Exercice 4
cf = macro.steppingRight(cf + 144)
cf = macro.burningVigor(cf + 31)
-- Exercice 5
cf = macro.steppingRight(cf + 144)
cf = macro.burningVigor(cf + 31)

cf = macro.goToLessonScreen(cf + 454)

-- Lesson 5.5 (The road to victory)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 5, 5)
cf = macro.skipIntroText(cf + 784)

-- Exercice 1
cf = input:right(cf + 156, 27)
cf = macro.ditchInto(cf + 1)
-- Exercice 2
cf = macro.burningVigor(cf + 113)
-- Exercice 3
cf = input:square(cf + 160)
-- Exercice 4
cf = input:left(cf + 80, 20)
cf = input:circle(cf + 1)
cf = macro.throw(cf + 145)
-- Exercice 5
cf = macro.burningVigor(cf + 85)
-- Exercice 6
cf = input:square(cf + 160)
-- Exercice 7
cf = macro.steppingLeft(cf + 80)
cf = macro.burningVigor(cf + 31)
-- Exercice 8
cf = input:square(cf + 160)
-- Exercice 9
cf = macro.steppingLeft(cf + 95)
cf = macro.ditchInto(cf + 7)
-- Exercice 10
cf = macro.burningVigor(cf + 112)

cf = macro.goToLessonScreen(cf + 453)

-- Lesson 6.1 (Movement summary)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 6, 1)
cf = macro.skipIntroText(cf + 805)

-- Exercice 1
cf = input:left(cf + 152)
-- Exercice 2
cf = macro.crouch(cf + 72)
-- Exercice 3
cf = input:square(cf + 66)
-- Exercice 4
cf = input:triangle(cf + 72)
-- Exercice 5
cf = input:right(cf + 73)
-- Exercice 6
cf = input:cross(cf + 72)
-- Exercice 7
cf = input:up(cf + 67)
-- Exercice 8
cf = input:square(cf + 77)
-- Exercice 9
cf = macro.crouch(cf + 72)
-- Exercice 10
cf = input:left(cf + 67)

cf = macro.goToLessonScreen(cf + 369)

-- Lesson 6.2 (Unique moves summary)

cf = input:cross(cf + 177)
cf = macro.goToLesson(cf + 2, 6, 2)
cf = macro.skipIntroText(cf + 768)

-- Exercice 1
cf = input:right(cf + 152, 4)
cf = macro.teamUp(cf + 1)
-- Exercice 2
cf = macro.ditchOut(cf + 326)
-- Exercice 3
cf = macro.steppingRight(cf + 70)
cf = macro.bottomThrow(cf + 3)
-- Exercice 4
cf = input:right(cf + 285)
cf = macro.safeFall(cf + 18)
-- Exercice 5
cf = macro.ditchInto(cf + 63)
-- Exercice 6
cf = macro.hinataTextbookCombo3(cf + 72)
-- Exercice 7
cf = macro.steppingLeft(cf + 68)
-- Exercice 8
cf = macro.steppingRight(cf + 70)
cf = input:right(cf, 40)
cf = input:left(cf + 64)
-- Exercice 9
cf = macro.steppingRight(cf + 106)
cf = input:right(cf, 38)
cf = macro.safeFall(cf + 18)
-- Exercice 10
cf = macro.steppingRight(cf + 65)

cf = macro.goToLessonScreen(cf + 375)

-- Lesson 6.3 (Major skills summary)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 6, 3)
cf = macro.skipIntroText(cf + 792)

-- Exercice 1
cf = input:right(cf + 154, 10)
cf = macro.burningVigor(cf + 1)
-- Exercice 2
cf = input:right(cf + 150, 35)
cf = input:right(cf + 65)
cf = input:square(cf + 1)
-- Exercice 3
cf = macro.hinataRivalLauncher(cf + 102)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 4
cf = macro.burningVigor(cf + 110)
-- Exercice 5
cf = input:triangle(cf + 185)
-- Exercice 6
cf = input:right(cf + 85, 35)
cf = input:right(cf + 65)
cf = input:square(cf + 1)
-- Exercice 7
cf = macro.steppingRight(cf + 110)
cf = macro.ditchInto(cf + 5)
-- Exercice 8
cf = macro.hinataRivalLauncher(cf + 85, true)
cf = input:up(cf + 1)
cf = input:square(cf + 55)
-- Exercice 9
cf = macro.burningVigor(cf + 110)
-- Exercice 10
cf = input:left(cf + 180, 15)
cf = input:circle(cf + 1)
cf = macro.throw(cf + 145)

cf = macro.goToLessonScreen(cf + 370)

-- Lesson 6.4 (Total summary)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 6, 4)
cf = macro.skipIntroText(cf + 794)

-- Exercice 1
cf = input:right(cf + 152)
-- Exercice 2
cf = input:circle(cf + 72)
-- Exercice 3
cf = macro.crouch(cf + 72)
-- Exercice 4
cf = macro.steppingRight(cf + 72)
cf = macro.throw(cf + 5)
-- Exercice 5
cf = input:left(cf + 130, 22)
cf = macro.ditchOut(cf + 33)
-- Exercice 6
cf = macro.teamUp(cf + 72)
-- Exercice 7
cf = input:right(cf + 330, 40)
cf = macro.safeFall(cf + 15)
-- Exercice 8
cf = macro.burningVigor(cf + 59)
-- Exercice 9
cf = macro.hinataTextbookCombo2(cf + 129)
-- Exercice 10
cf = macro.steppingRight(cf + 81)
cf = input:right(cf, 60)
cf = macro.throw(cf + 40)

cf = macro.goToLessonScreen(cf + 371)

-- Lesson 6.5 (Hayato's challenge)

cf = input:cross(cf + 176)
cf = macro.goToLesson(cf + 2, 6, 5)
cf = macro.skipIntroText(cf + 809)

cf = macro.steppingRight(cf + 152)
cf = macro.teamUp(cf + 3)
cf = macro.teamUp(cf + 326)
cf = macro.teamUp(cf + 326)

return input:all()