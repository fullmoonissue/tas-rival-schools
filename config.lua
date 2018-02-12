doSaveStateAt = 63530

loadSlot = 0
saveSlot = 0

currentLesson = 26

-- Some frame stats
-- 757 frames between a lesson chosen and the first frame to scroll Hayato's text
-- 152 frames between the end of speech of Hayato and the first frame to make the requested move
-- 72 frames between each move to make (87 after high jump)
-- 6 frames to consider the crouch done
-- 51 frames to wait until a second throw (not validated else)
-- 372 frames between the end of the lesson and the first frame to validate the mastery
-- 212 frames between "change lesson" and choosing the next one

-- Some memory addresses
-- P1 Life : 1EFA00
-- P1 Combo Level : 1EFC18