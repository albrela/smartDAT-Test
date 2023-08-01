local function pChanged()
  print("some parameter has changed")
end
Script.register("Parameters.OnParametersChanged", pChanged)

local function main()
  -- write app code in local scope, using API
  --Parameters.loadPermanent()
  print("DeviceIdent: "..(Parameters.get("DItype") or "nil"))
  print("ASampleStringVar: "..(Parameters.get("ASampleStringVar") or "nil"))
  print("ASampleIntegerVar: "..(Parameters.get("ASampleIntegerVar") or "nil"))
  print("newBool: "..tostring((Parameters.get("newBool"))))
  print("ASampleStructVar/MyBool: "..tostring((Parameters.get("ASampleStructVar/MyBool"))))
  Parameters.set("ASampleStringVar", "Yo")
  Parameters.apply()
  print("ASampleStringVar: "..(Parameters.get("ASampleStringVar") or "nil"))  
  Parameters.set("ASampleStringVar", "Buh")
  Parameters.apply()
  Parameters.savePermanent()
  print("ASampleStringVar: "..(Parameters.get("ASampleStringVar") or "nil"))    
end
Script.register("Engine.OnStarted", main)
-- serve API in global scope
