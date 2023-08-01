require('SRC.dat.smartDAT.scripts.src.ComLink.ethernet')

-- get local functions from modules
local localFoos = require('SRC.dat.smartDAT.scripts.src.ComLink.ethernet')

Test_ComLink = {
}

function Test_ComLink:Test_calculateFirstAvailableAddress()

  -- Test case 1: IP-address = "192.168.1.100", subnet mask = "255.255.255.0"
  LU.assertIs( 
    localFoos._calculateFirstAvailableAddress("192.168.1.100", "255.255.255.0"),
    "192.168.1.1",
    "Test case 1 failed. Expected: 192.168.1.1"
  )

  -- Test case 2: IP-address = "10.0.0.50", subnet mask = "255.255.255.0"
  LU.assertIs( 
    localFoos._calculateFirstAvailableAddress("10.0.0.50", "255.255.255.0"),
    "10.0.0.1",
    "Test case 2 failed. Expected: 10.0.0.1"
  )

  -- Test case 3: IP-address = "172.16.0.254", subnet mask = "255.255.255.0"
  LU.assertIs( 
    localFoos._calculateFirstAvailableAddress("172.16.0.254", "255.255.255.0"),
    "172.16.0.1",
    "Test case 3 failed. Expected: 172.16.0.1"
  )

  -- Test case 4: IP-address = "254.254.254.254", subnet mask = "255.255.255.0"
  LU.assertIs( 
    localFoos._calculateFirstAvailableAddress("254.254.254.254", "255.255.255.0"),
    "254.254.254.1",
    "Test case 4 failed. Expected: 254.254.254.1"
  )

  -- Test case 5: IP-address = "192.168.0.2", subnet mask = "255.255.255.0"
  LU.assertIs( 
    localFoos._calculateFirstAvailableAddress("192.168.0.2", "255.255.255.0"),
    "192.168.0.1",
    "Test case 5 failed. Expected: 192.168.0.1"
  )

  -- Test case 6: IP-address = "192.168.1.1", subnet mask = "255.255.255.254"
  LU.assertIs( 
    localFoos._calculateFirstAvailableAddress("192.168.1.1", "255.255.255.254"),
    "192.168.1.1",
    "Test case 6 failed. Expected: 192.168.1.1"
  )

  -- Test case 7: IP-address = "192.168.0.1", subnet mask = "255.255.255.0"
  LU.assertIs( 
    localFoos._calculateFirstAvailableAddress("192.168.0.1", "255.255.255.0"),
    "192.168.0.2",
    "Test case 7 failed. Expected: 192.168.0.2"
  )

end

function Test_ComLink:Test_isValidIPAddress()

  -- Test case 1: valid IP-address 
  LU.assertIsTrue(
    localFoos._isValidIPAddress("192.168.1.100"),
    "Test case 1 failed. Expected: true"
  )

  -- Test case 2: Invalid IP address (octet value out of range)
  LU.assertIsFalse(
    localFoos._isValidIPAddress("10.0.0.256"),
    "Test case 2 failed. Expected: false"
  )

  -- Test case 3: Invalid IP address (not enough octets)
  LU.assertIsFalse(
    localFoos._isValidIPAddress("172.16.0"),
    "Test case 3 failed. Expected: false"
  )

  -- case 4: Invalid IP address (reserved address 0.0.0.0)
  LU.assertIsFalse(
    localFoos._isValidIPAddress("0.0.0.0"),
    "Test case 4 failed. Expected: false"
  )

end

function Test_ComLink:Test_getIsInRange()

  -- Test case 1: IP address and subnet mask match the host
  LU.assertIsTrue(
    localFoos._getIsInRange("255.255.255.0", "255.255.255.0", "192.168.0.1", "192.168.0.10"),
    "Test case 1 failed. Expected: true"
  )

  -- Test case 2: IP address matches the host, but subnet mask does not
  LU.assertIsFalse(
    localFoos._getIsInRange("255.255.255.0", "255.255.0.0", "192.168.0.1", "192.168.0.10"),
    "Test case 2 failed. Expected: false"
  )

  -- Test case 3: IP address matches the subnet mask, but not the host
  LU.assertIsFalse(
    localFoos._getIsInRange("255.255.255.0", "255.255.0.0", "192.168.1.1", "192.168.0.10"),
    "Test case 3 failed. Expected: false"
  )

  -- Test case 4: IP address and subnet mask do not match the host
  LU.assertIsFalse(
    localFoos._getIsInRange("255.255.255.0", "255.255.0.0", "192.168.1.1", "10.0.0.1"),
    "Test case 4 failed. Expected: false"
  )

end

return Test_ComLink