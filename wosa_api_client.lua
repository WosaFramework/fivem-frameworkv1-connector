--------------------------------
--- WOSA API - OFFICIAL FILE ---
--------------------------------





--[[

	"v2" is strongly adviced...
	"v1" is still supported but not maintained by any core developer(s)...

--]]
--- --- --- --- --- --- --- --- ---
-----------------------------------
--- --- --- --- --- --- --- --- ---

local version = 'v2'

--- --- --- --- --- --- --- --- ---
-----------------------------------
--- --- --- --- --- --- --- --- ---








------------------
--- API CONFIG ---
------------------

-- @ARRAY API REGISTER
Wosa = nil

------------------------------
--- API (FROM WOSA) EVENTS ---
------------------------------

TriggerEvent('WOSA:USER_DATA:LIBRARY:SERVER:GET_DATA_'..version or 'v1', function(data) Wosa = data end)
