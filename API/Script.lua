Script = {}
Script.__index = Script

function Script:register()
    return true
end

function Script:serveEvent()
    return true
end

function Script:serveFunction()
    return true
end

return Script