Image = {
    CodeReader = {
        Barcode = {
            Code128 = {}
        },
        DataMatrix = {},
        QR = {}
    }
} -- the table representing the class, which will double as the metatable for the instances
Image.__index = Image -- failed table lookups on the instances should fallback to the class table, to get methods
Image.CodeReader.__index = Image.CodeReader
Image.CodeReader.Barcode.__index = Image.CodeReader.Barcode
Image.CodeReader.QR.__index = Image.CodeReader.QR
Image.CodeReader.Barcode.Code128.__index = Image.CodeReader.Barcode.Code128

---Constructor
---@param self any
---@return table
function Image.create(self)
    return setmetatable({}, Image)
end

---Constructor
---@param self any
---@return table
function Image.CodeReader.create(self)
    return setmetatable({}, Image.CodeReader)
end

--
function Image.CodeReader:setDecoder()
    return true
end

---Constructor
---@param self any
---@return table
function Image.CodeReader.Barcode.create(self)
    return setmetatable({}, Image.CodeReader.Barcode)
end

function Image.CodeReader.Barcode:setSymbology()
    return true, ""
end

---Constructor
---@param self any
---@return table
function Image.CodeReader.Barcode.Code128.create(self)
    return setmetatable({}, Image.CodeReader.Barcode.Code128)
end

---Constructor
---@param self any
---@return table
function Image.CodeReader.DataMatrix.create(self)
    return setmetatable({}, Image.CodeReader.DataMatrix)
end

---Constructor
---@param self any
---@return table
function Image.CodeReader.QR.create(self)
    return setmetatable({}, Image.CodeReader.QR)
end

return Image