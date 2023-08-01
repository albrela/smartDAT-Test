View = {
    ShapeDecoration = {},
    GraphDecoration = {}
} -- the table representing the class, which will double as the metatable for the instances
View.__index = View -- failed table lookups on the instances should fallback to the class table, to get methods
View.GraphDecoration.__index = View.GraphDecoration
View.ShapeDecoration.__index = View.ShapeDecoration

---Constructor
---@param self any
---@return table
function View.create(self)
    return setmetatable({}, View)
end

---Constructor
---@param self any
---@return table
function View.GraphDecoration.create(self)
    return setmetatable({}, View.GraphDecoration)
end

function View.GraphDecoration:setBackgroundColor()
    return true
end

function View.GraphDecoration:setGraphColor()
    return true
end

function View.GraphDecoration:setDrawSize()
    return true
end

function View.GraphDecoration:setGridVisible()
    return true
end

function View.GraphDecoration:setLabelsVisible()
    return true
end

function View.GraphDecoration:setTicksVisible()
    return true
end

function View.GraphDecoration:setAxisVisible()
    return true
end

function View.GraphDecoration:setPolarPlot()
    return true
end

function View.GraphDecoration:setGraphType()
    return true
end

function View.GraphDecoration:setAxisWidth()
    return true
end

function View.GraphDecoration:setDynamicSizing()
    return true
end

---Constructor
---@param self any
---@return table
function View.ShapeDecoration.create(self)
    return setmetatable({}, View.ShapeDecoration)
end

function View.ShapeDecoration:setFillColor()
    return true
end

function View.ShapeDecoration:setLineColor()
    return true
end

function View.ShapeDecoration:setLineWidth()
    return true
end

function View.ShapeDecoration:setPointType()
    return true
end

function View.ShapeDecoration:setPointSize()
    return true
end

return View