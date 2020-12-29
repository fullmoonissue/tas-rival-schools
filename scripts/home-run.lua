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

local function retrieveFrameBestShoot(seed, numberShoot)
    SQL.opendatabase('db/home_run.db')
    local bestShoot = SQL.readcommand('SELECT frame FROM seed_frame_result WHERE seed = ' .. seed .. ' AND numberShoot = ' .. numberShoot .. ' ORDER BY result desc LIMIT 1')

    return bestShoot['frame 0']
end

HomeRun.prepareDatabase = prepareDatabase
HomeRun.insertSeedFrameResult = insertSeedFrameResult
HomeRun.retrieveFrameBestShoot = retrieveFrameBestShoot

return HomeRun