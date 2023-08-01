---Provides access to parameters of the current application and the device parameters.
---This CROWN implements the AppSpace Parameters component. Read more about Parameters in the AppSpace documentation.
---Parameters could be basic types (int, bool, ...) which can be accessed over "Parameters.get" and "Parameters.set" in this case.
---Parameters could be complex types (array, struct, ...) which can be accessed over "Parameters.getNode" and "Parameters.setNode" in this case.
---Complex parameters are represented as "Parameters.Node" object and can be accessed and navigated over its functions.
---@class Parameters
Parameters = {
  ---A "Parameters.Node" object represents a parameter composition or one leaf of it.
  ---If can be used to navigate in the tree of the complex parameter to access or modify values.
  ---A node cannot be created by this CROWN, but it is returned e.g. from "Parameters.getNode".
  ---@class Parameters.Node
  Node = {}
} -- the table representing the class, which will double as the metatable for the instances
Parameters.__index =
    Parameters -- failed table lookups on the instances should fallback to the class table, to get methods
Parameters.Node.__index = Parameters.Node

---Constructor
---@param self any
---@return table
function Parameters.create(self)
  return setmetatable({}, Parameters)
end

--
function Parameters.Node:getArraySize()
  return 0
end

---Gets the single value or all values of this node or of a child node addressed by a relativePath. \
---This function can also access just one leaf of a complex parameter by addressing over xPath syntax. The numbers used for array access are interpreted as hex-numbers. \
---If the accessed leaf is a struct or array, then use the getNode()-function instead.
---~~~
----- Usage possibilities:
---local singleValue = Parameters.Node.get(node) -- if the node is a single value get it
---local singleSubValue = Parameters.Node.get(node, "subValue") -- get the member value "subValue" of this node if it is a struct
---local arraySubValue = Parameters.Node.get(node, "subArray") -- get all the member array values of member "subArray" if it is a struct
---local arrayValue = Parameters.Node.get(node, "[0]") -- get the first index value of an array node. Index number is interpreted as hex-number.
---local singleSubArrayValue = Parameters.Node.get(node, "subMember/subArray[0]") -- get the first value of the subArray which is member of the subMember struct. Index number is interpreted as hex-number.
---~~~
---@param nodeObject Parameters.Node The instance of the object to use
---@param relativePath? string The name or relativePath to access. Nil if accessing this node
---@return any varValue The value(s) of the parameter. Nil if parameter does not exist or type not possible. The type which is returned depends on the value of the parameter.
function Parameters.Node.get(nodeObject, relativePath)
  return nodeObject
end

---Gets a copy of a single node of this node or of a child node addressed by a relativePath.\
---This function can also access just one leaf of a complex parameter by addressing over xPath syntax. The numbers used for array access are interpreted as hex-numbers.
---
---__Sample__
---```LUA
----- Usage possibilities:
---local subNode = Parameters.Node.getNode(node, "childName") -- get one member node named "childName"
---local subArraynode = Parameters.Node.getNode(node, "subMember/subArray[0]") -- get the first value of the subArray which is member of subMember struct. Index number is interpreted as hex-number.
---```
---@param nodeObject Parameters.Node The instance of the object to use
---@param relativePath? string The name or relativePath to access. Nil if accessing this node
---@return Parameters.Node|nil nodeObjectCopy The copy of the node object of the parameter or nil if parameter does not exist
function Parameters.Node.getNode(nodeObject, relativePath)
  return nil
end

return Parameters
