require('SRC.dat.smartDAT.scripts.ext_oth.helperFunctions')

Test_HelperFunctions = {}

function Test_HelperFunctions:Test_tableiContains()
    -- mirror ReadDeviceState within the DUD structure from NS3 
    local ns3ReadDeviceState = {
        "0x0",
        "0xC0000000..0xCFFFFFFF"        
    }

    local tIncStrgZero = table.iContains(ns3ReadDeviceState, "0x0")
    Log.info("TestTableIContains:assertEquals(\"0x0\") returns " .. tostring(tIncStrgZero))
    LU.assertEquals(tIncStrgZero, true)

    local tIncHexStrgNumRange = table.iContains(ns3ReadDeviceState, "0xC0000001")
    Log.info("TestTableIContains:assertEquals(\"0xC0000001\") returns " .. tostring(tIncHexStrgNumRange))
    LU.assertEquals(tIncHexStrgNumRange, true)
    
    local tIncStrgNum = table.iContains(ns3ReadDeviceState, "3221225473")
    Log.info("TestTableIContains:assertEquals(\"3221225473\") returns " .. tostring(tIncStrgNum))
    LU.assertEquals(tIncStrgNum, true)

    local tExcHexStrgNum = table.iContains(ns3ReadDeviceState, "0xD0000001")
    Log.info("TestTableIContains:assertEquals(\"0xD0000001\") returns " .. tostring(tExcHexStrgNum))
    LU.assertEquals(tExcHexStrgNum, false)    

    local tExcStrgNum = table.iContains(ns3ReadDeviceState, "3489660929")
    Log.info("TestTableIContains:assertEquals(\"3489660929\") returns " .. tostring(tExcStrgNum))
    LU.assertEquals(tExcStrgNum, false)  
end

-- Testfunktion für HelperFunctions.simpleTableDump
function Test_HelperFunctions:Test_simpleTableDump()
    local testTable = {
        name = "John",
        age = 30,
        city = "New York",
        hobbies = {"Reading", "Cooking", "Gardening"},
        address = {
            street = "123 Main Street",
            postalCode = 10001,
        },
    }

    local expectedOutput = [[{
    ["address"]={
        ["postalCode"]=10001,
        ["street"]=123MainStreet
    },
    ["age"]=30,
    ["city"]=NewYork,
    ["hobbies"]={
        [1]=Reading,
        [2]=Cooking,
        [3]=Gardening
    },
    ["name"]=John
}]]

    local serializedTable = HelperFunctions.simpleTableDump(testTable)

    -- Remove all white spaces, tabs, and newlines from the serialized output
    serializedTable = serializedTable:gsub('%s+', '')

    -- Remove all white spaces, tabs, and newlines from the expected output
    expectedOutput = expectedOutput:gsub('%s+', '')

    -- Check if the serialized output matches the expected output without considering white spaces
    LU.assertEquals(serializedTable, expectedOutput)
end





