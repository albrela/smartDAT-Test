Timer = {}
Timer.__index = Timer

---Constructor
---@param self any
---@return table
function Timer.create(self)
    return setmetatable({}, Timer)
end

--
function Timer:register()
    return true
end


--
function Timer:setExpirationTime()
    return true
end

return Timer