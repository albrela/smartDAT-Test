Engine = {}
Engine.__index = Engine

local eDigitalInPorts = {
    "DI1", "DI2", "DI3", "DI4", 
    "S1DI1", "S1DI2", "S2DI1", "S2DI2", "S3DI1", "S3DI2", "S4DI1", "S4DI2",
    "S5DI1", "S5DI2", "S5DI3", "S6DI1", "S6DI2", "S6DI3"
}

local eDigitalOutPorts = {
    "DO3", "DO4", 
    "S1DO1", "S2DO1", "S3DO1", "S4DO1",
    "S5DO1", "S5DO2", "S6DO1", "S6DO2"
}

local eEthernetInterfaces = {
    "ETH1", "ETH2", "ETH3", "ETH4"
}

---__Function getEnumValues__ \
---Returns all enum values of an enum defined in the manifest as a vector sorted alphabetically.\
---__Sample__ 
---```
---local enumValTable = Engine.getEnumValues("Log.Level")
---```
---
---@param enumName string The full CROWN enum name to return its values
---@return table<string>|nil enumVals The sorted vector of enum values or nil if enum does not exist
function Engine:getEnumValues(enumName)
    if "DigitalInPorts" == enumName then
        return eDigitalInPorts   
    elseif "DigitalOutPorts" == enumName then
        return eDigitalOutPorts
    elseif "EthernetInterfaces" == enumName then
        return eEthernetInterfaces
    elseif "SerialComTypes" == enumName then

    elseif "SerialPortConnectors" == enumName then
    end

    return nil
end