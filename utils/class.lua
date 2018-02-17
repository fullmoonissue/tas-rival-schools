-- Code from http://lua-users.org/wiki/SimpleLuaClasses
function class(base, init)
    local c = {}    -- a new class instance
    if not init and type(base) == 'function' then
        init = base
        base = nil
    end
    -- the class will be the metatable for all its objects,
    -- and they will look up their methods in it.
    c.__index = c

    -- expose a constructor which can be called by <classname>(<args>)
    local mt = {}
    mt.__call = function(class_tbl, ...)
        local obj = {}
        setmetatable(obj, c)
        if init then
            init(obj, ...)
        else
            -- make sure that any stuff from the base class is initialized!
            if base and base.init then
                base.init(obj, ...)
            end
        end
        return obj
    end
    c.init = init
    setmetatable(c, mt)
    return c
end