Connector = {
    ["DigitalIn"] = {}
}

local DigitalInPorts = {
    ["DI1"] = true,
    ["DI2"] = true,
    ["DI3"] = true,
    ["DI4"] = true,
    ["S1DI1"] = true,
    ["S1DI2"] = true,
    ["S2DI1"] = true,
    ["S2DI2"] = true,
    ["S3DI1"] = true,
    ["S3DI2"] = true,
    ["S4DI1"] = true,
    ["S4DI2"] = true,
    ["S5DI1"] = true,
    ["S5DI2"] = true,
    ["S5DI3"] = true,
    ["S6DI1"] = true,
    ["S6DI2"] = true,
    ["S6DI3"] = true
}

function Connector.DigitalIn:create(portName)
    -- exit here in case of invalid port name
    if not DigitalInPorts[portName] then return false end

    return {}
end

return Connector