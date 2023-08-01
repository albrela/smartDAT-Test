-- https://luaunit.readthedocs.io/en/latest/#flexible-test-selection

--print(package.cpath)

print("Lua version: " .. _VERSION)
LU = require('luaunit')
print("LuaUnit version: " .. LU._VERSION)
TestData = require('testData')
print("TestData version: " .. TestData._VERSION)

assert("Lua 5.3"==_VERSION, "This script requires Lua 5.3, current version is " .. _VERSION .. ".")

_APPNAME = "smartDAT-Test"
--- Enables the output of the terminal depending on its level
_TEST_CONSOLE = {
    ["info"] = false,
    ["severe"] = false,
    ["warning"] = false
  }
-- add path to src files to allow the use of 'require'
package.path = package.path .. ";SRC\\dat\\smartDAT\\scripts\\?.lua"
--print(package.path)

-- load all virtual API modules

-- Assume that all your files are inside "API" folder 
-- (no recursive subdirectories search is performed)

--for filename in io.popen('ls -pUqAL "API"'):lines() do      --Linux
for filename in io.popen('dir /b/a-d "API"'):lines() do  --Windows
    filename = filename:match"^(.*)%.lua$"
    if filename then
        require("API."..filename)
    end
end

function Dump(o)
  if type(o) == 'table' then
     local s = '{ '
     for k,v in pairs(o) do
        if type(k) ~= 'number' then k = '"'..k..'"' end
        s = s .. '['..k..'] = ' .. Dump(v) .. ','
     end
     return s .. '} '
  else
     return tostring(o)
  end
end

-- not working since local lua socket is not available due to uninstall from pacman and build/install lua with mingw in msys2
--[[ local http=require("socket.http");
local ltn12=require("ltn12"); ]]

local request_body = [[login=user&password=123]]
local response_body = {}

--[[ local res, code, response_headers = http.request{
    url = "http://127.0.0.1/api/crown/DateTime/getDateTime",
    method = "POST", 
    headers = 
      {
          ["Content-Type"] = "application/json";
          ["Content-Length"] = #request_body;
      },
      source = ltn12.source.string(request_body),
      sink = ltn12.sink.table(response_body),
} ]]

--[[ print(res)
print(code)

if type(response_headers) == "table" then
  for k, v in pairs(response_headers) do 
    print(k, v)
  end
end

print("Response body:")
if type(response_body) == "table" then
  print(table.concat(response_body))
else
  print("Not a table:", type(response_body))
end ]]

-- test_spec.lua
_G._TEST = true

-- load the test modules they need to perform
require('TEST_MODULES.TestGen')
require('TEST_MODULES.HelperFunctions')
require('TEST_MODULES.ComLink')

os.exit( LU.LuaUnit.run() )