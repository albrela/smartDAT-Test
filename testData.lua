local json = require('json')

local M={}

-- private exported functions (for testing)
M.private = {}

M._VERSION='1.0'


M.EMsgFatal = json.decode([[
    [ {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      } ]
]])

M.EMsgError = json.decode([[
    [ {
        "ErrReserved": 0,
        "ErrorId": 67109386,
        "ErrorState": 1,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 12360,
          "PwrOnCnt": 12,
          "TimeOccur": 1388
        },
        "LastTime": {
          "OpSecs": 17103,
          "PwrOnCnt": 14,
          "TimeOccur": 11
        },
        "NumberOccurance": 4
      }, {
        "ErrReserved": 0,
        "ErrorId": 67109385,
        "ErrorState": 2147483650,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 34747,
          "PwrOnCnt": 33,
          "TimeOccur": 15
        },
        "LastTime": {
          "OpSecs": 34747,
          "PwrOnCnt": 33,
          "TimeOccur": 15
        },
        "NumberOccurance": 1
      }, {
        "ErrReserved": 0,
        "ErrorId": 67109633,
        "ErrorState": 2147483650,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 12366,
          "PwrOnCnt": 12,
          "TimeOccur": 1394
        },
        "LastTime": {
          "OpSecs": 12423,
          "PwrOnCnt": 37,
          "TimeOccur": 11
        },
        "NumberOccurance": 2
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
    } ]
]])


M.EMsgWarning = json.decode([[
    [ {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
      }, {
        "ErrReserved": 0,
        "ErrorId": 0,
        "ErrorState": 0,
        "ExtInfo": "nil",
        "FirstTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "LastTime": {
          "OpSecs": 0,
          "PwrOnCnt": 0,
          "TimeOccur": 0
        },
        "NumberOccurance": 0
    } ]
]])

M.FirmwareVersion = json.decode([["V1.83.1  "]])

return M
