require('utils/class')

local sections = {
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
    }
}

Tas = class()

function Tas:iterateOver(section, callback)
    for _, file in ipairs(sections[section]) do
        if file ~= '.' and file ~= '..' then
            callback(section .. '/' .. file)
        end
    end
end