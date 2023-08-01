_template = {

} -- the table representing the class, which will double as the metatable for the instances
_template.__index = _template -- failed table lookups on the instances should fallback to the class table, to get methods

---Constructor
---@param self any
---@return table
function _template.create(self)
    return setmetatable({}, _template)
end

return _template