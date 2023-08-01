Log = {
    Handler = {},
    SharedLogger = {}
}
Log.__index = Log
Log.Handler.__index = Log.Handler
Log.SharedLogger.__index = Log.SharedLogger

---@param val string
function Log.info(val)
    if _TEST_CONSOLE.info then
        print(">> "..tostring(val))
    end
end

---@source https://docs.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences?redirectedfrom=MSDN
---@param val string
function Log.severe(val)
    if _TEST_CONSOLE.severe then
        print("\x1b[31m>> "..tostring(val).."\x1b[m")
    end
end

---@param val string
function Log.setLevel(val)
    
end

---@source https://docs.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences?redirectedfrom=MSDN
---@param val string
function Log.warning(val)
    if _TEST_CONSOLE.warning then
        print("\x1b[33m>> "..tostring(val).."\x1b[m")
    end
end

---Constructor
---@param self any
---@return table
function Log.Handler.create(self)
    return setmetatable({}, Log.Handler)
end

--
function Log.Handler:addCallbackSink()
    
end

--
function Log.Handler:applyConfig()
    
end

--
function Log.Handler:attachToSharedLogger()
    
end

--
function Log.Handler:setLevel()
    
end

---Constructor
---@param self any
---@return table
function Log.SharedLogger.create(self)
    return setmetatable({}, Log.SharedLogger)
end

--
function Log.SharedLogger:setLevel()
    
end

return Log