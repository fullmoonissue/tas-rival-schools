local HomeRun = {}

local function prepareDatabase()
    SQL.createdatabase('db/home_run.db')
    SQL.opendatabase('db/home_run.db')
    SQL.writecommand('CREATE TABLE seed_frame_result ('
        .. 'id int PRIMARY KEY,'
        .. 'seed int,'
        .. 'numberShoot int,'
        .. 'frame int,'
        .. 'result int'
        .. ')'
    )
end

local function insertSeedFrameResult(id, seed, numberShoot, frame, result)
    SQL.opendatabase('db/home_run.db')
    SQL.writecommand('INSERT INTO seed_frame_result VALUES (' .. id .. ', ' .. seed .. ', ' .. numberShoot .. ', ' .. frame .. ', ' .. result .. ')')
end

local function retrieveBestShoot(seed, numberShoot)
    SQL.opendatabase('db/home_run.db')
    local bestShoot = SQL.readcommand('SELECT frame, result FROM seed_frame_result WHERE seed = ' .. seed .. ' AND numberShoot = ' .. numberShoot .. ' ORDER BY result desc LIMIT 1')

    return {['frame'] = bestShoot['frame 0'], ['result'] = bestShoot['result 0']}
end

local function retrieveAttemptsOf(seed, numberShoot, emptyValue)
    SQL.opendatabase('db/home_run.db')
    local attemptRecords = SQL.readcommand('SELECT result FROM seed_frame_result WHERE seed = ' .. seed .. ' AND numberShoot = ' .. numberShoot .. ' ORDER BY id')

    local attempts = {}
    for i = 0, 4 do
        table.insert(attempts, attemptRecords['result ' .. i] or emptyValue)
    end

    return attempts
end

HomeRun.prepareDatabase = prepareDatabase
HomeRun.insertSeedFrameResult = insertSeedFrameResult
HomeRun.retrieveAttemptsOf = retrieveAttemptsOf
HomeRun.retrieveBestShoot = retrieveBestShoot

return HomeRun