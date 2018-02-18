-- Frame number to make a savestate
local doSaveStateAt = 105735

-- Slot (Savestate) to load
local loadSlot = nil

-- Slot (Savestate) to save (if doSaveStateAt is assigned)
local saveSlot = 9

-- Current Tas
--[[

    Values :
    * home-run-mode : Play in the Home Run Contest (with Shoma)
    * hayato-lessons : Hayato will teach you the skills you need to know to become a master
    * target-mode : Knock out the score panels set up at the goal (with Roberto)
    * service-mode : Practice serving volleyballs (with Natsu)
    * shoot-out-mode : Play in the penalty kick shoot-out (with Roberto)

]]
local currentTas = 'service-mode'

-- The function io.popen is not available in Bizhawk and I can't have lfs available for Windows
-- (Bizhawk is running on a Windows VM but my os isn't)
-- So I list the files of the differents tas files here instead of dynamically retrieve them
local tasFiles = {
    ['hayato-lessons'] = {
        '0-init',
        '1-basic-movement',
        '2-jumps',
        '3-punches',
        '4-kicks',
        '5-basics-summary',
        '6-stepping',
        '7-ditch',
        '8-jumping-summary',
        '9-throws',
        '10-unique-moves-summary',
        '11-safe-fall',
        '12-getting-up',
        '13-team-up-technique',
        '14-textbook-combo',
        '15-basic-skills-summary',
        '16-rival-launcher',
        '17-get-up-attack',
        '18-tardy-counter',
        '19-burning-vigor-attack',
        '20-expert-skill-summary',
        '21-ditch-n-spin',
        '22-throw-escapes',
        '23-lightning-crush',
        '24-burning-vigor-attack-counter',
        '25-the-road-to-victory',
        '26-movement-summary',
        '27-unique-moves-summary',
        '28-major-skills-summary',
        '29-total-summary',
        '30-hayato-challenge',
    },
    ['home-run-mode'] = {
        '0-init',
        '1-shoots',
    },
    ['target-mode'] = {
        '0-init',
        '1-shoots',
    },
    ['service-mode'] = {
        '0-init',
        '1-shoots',
    },
    ['shoot-out-mode'] = {
        '0-init',
        '1-shoots',
    },
}

-- A savestate have to be load before the mini games' tas
-- It contains 3 ending games (Shoma, Natsu and Roberto) on hardest difficulty to unlock them
local loadSavestate = {
    ['home-run-mode'] = 'mini-games-prepared',
    ['service-mode'] = 'mini-games-prepared',
    ['shoot-out-mode'] = 'mini-games-prepared',
    ['target-mode'] = 'mini-games-prepared',
}

return {
    ['currentTas'] = currentTas,
    ['doSaveStateAt'] = doSaveStateAt,
    ['loadSavestate'] = loadSavestate,
    ['loadSlot'] = loadSlot,
    ['saveSlot'] = saveSlot,
    ['tasFiles'] = tasFiles,
}