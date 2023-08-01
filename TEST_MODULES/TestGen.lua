require('SRC.dat.smartDAT.scripts.src.Core.core')
require('SRC.dat.smartDAT.scripts.src.TestGen.testGen')

-- get local functions from modules
local localFoos = require('SRC.dat.smartDAT.scripts.src.TestGen.testGen')

local json = require('json')

Test_TestGen = {}

-- load DUD
local dut_desc = io.open('SRC\\dat\\smartDAT\\resources\\dut_desc\\LMS5xx_Pro.json', "r+b")
if nil == dut_desc then
  error("Could not open File")
end

local t_dut_desc = json.decode(dut_desc:read('a'))

-- add DESC
local device_desc = io.open('SRC\\dat\\smartDAT\\resources\\device_desc\\lms5xx_lite.json', "r+b")
if nil == device_desc then
  error("Could not open File")
end

for _, v in ipairs(t_dut_desc.FunctionTest.StartupRoutine) do
  if v.ReadDiagnosticDump then
    v.ReadDiagnosticDump['CidMapping'] = json.decode(device_desc:read('a'))
  end
end

local disDisplayTest
for index, value in ipairs(t_dut_desc.FunctionTest.HMI.DisplayTests) do
  if value.Disable then
    disDisplayTest = value
  end
end

function Test_TestGen:setUp()
  --print("testSetup")
end

function Test_TestGen:Test_GetDeviceState()
  local testRes, testVal = GetDeviceState(t_dut_desc)
  --print("testVal: " .. testVal)
  LU.assertEquals(testRes, true)
end

---@see TestData Provided DUT Dummy data
function Test_TestGen:Test_isDisabled()
  
  -- case: target version is higher than recorded version ('patch')
  disDisplayTest.Disable.FirmwareVersion.Value = "1.83.2"
  local testFwHigh1, _ = localFoos._isDisabled(t_dut_desc, disDisplayTest)
  LU.assertEquals(testFwHigh1, true)
  
  -- case: target version is higher than recorded version ('minor' with lower 'patch')
  disDisplayTest.Disable.FirmwareVersion.Value = "1.84.1"
  local testFwHigh2, _ = localFoos._isDisabled(t_dut_desc, disDisplayTest)
  LU.assertEquals(testFwHigh2, true)
  
  -- case: target version is lower than recorded version ('patch')
  disDisplayTest.Disable.FirmwareVersion.Value = "1.83.0"
  local testFwLow1, _ = localFoos._isDisabled(t_dut_desc, disDisplayTest)
  LU.assertEquals(testFwLow1, false)
  
  --case: target version is lower than recorded version ('minor' with higher 'patch')
  disDisplayTest.Disable.FirmwareVersion.Value = "1.81.4"
  local testFwLow2, _ = localFoos._isDisabled(t_dut_desc, disDisplayTest)
  LU.assertEquals(testFwLow2, false)
  
  --case: target version is lower and shorter
  disDisplayTest.Disable.FirmwareVersion.Value = "1.83"
  local testFwEqu2, _ = localFoos._isDisabled(t_dut_desc, disDisplayTest)
  LU.assertEquals(testFwEqu2, false)  

  --case: target version is equal and recorded version is shorter
  --note: Test data overwritten from here
  disDisplayTest.Disable.FirmwareVersion.Value = "2.10.5"
  TestData.FirmwareVersion = json.decode([["V2.10  "]])
  local testFwEqu1, _ = localFoos._isDisabled(t_dut_desc, disDisplayTest)
  LU.assertEquals(testFwEqu1, true)

end

return Test_TestGen
