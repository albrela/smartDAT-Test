---Command handling functionalities
---@class Command
Command = {
    ---A client to connect to a command server and execute SOPAS commands.
    ---Command servers can be other devices which speak SOPAS CoLaA, CoLaB or CoLa2.
    ---A client can execute single commands on the device and also can store and restore parameters of it.
    ---
    ---To be able to talk with a device, a ".sopas" file is needed to be specified with the "Command.Client.setDescription" function.
    ---A ".sopas" file can be created using SOPAS ET and store a project.
    ---
    ---The connection to the device must be injected using the "setConnection" function by providing a handle to a connection which is already open and configured.
    ---Connections must be CROWNs which have a "transmit" function and an "OnReceive" event, e.g. "TCPIPClient" and "SerialCom".
    ---The handling of disconnects can be handled by the user.
    ---
    ---There is a default timeout for every request of 30 seconds. If the connection is lost or no response is received, the requests return with an error after that time.
    ---
    ---There is a fix internal maximum CoLa de/serialization buffer size of 64k. Request bigger than this are not possible.
    ---@class Command.Client
    Client = {}

} -- the table representing the class, which will double as the metatable for the instances
Command.__index = Command -- failed table lookups on the instances should fallback to the class table, to get methods
Command.Client.__index = Command.Client

---Reads a parameter of the connected device and returns its value
---@param handle Command.Client The instance handle to use
---@param varName string The name of the variable
---@return Parameters.Node|nil paramNode The copy of the value. Nil if not exists or was not possible to read.
function Command.Client.read(handle, varName)
    local paramNode = {}

    if "EMsgFatal" == varName then
        paramNode = TestData.EMsgFatal
    elseif "EMsgError" == varName then
        paramNode = TestData.EMsgError
    elseif "EMsgWarning" == varName then
        paramNode = TestData.EMsgWarning
    elseif "FirmwareVersion" == varName then
        paramNode = TestData.FirmwareVersion
    else
        paramNode = nil
    end

    return paramNode
end

return Command