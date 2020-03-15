--------------------------------
--- WOSA API - OFFICIAL FILE ---
--------------------------------

------------------
--- API CONFIG ---
------------------

-- @ARRAY API REGISTER
Wosa = nil

-- @LOCAL API REGISTER
local WOSA_API = {}

-- @ARRAY API CONFIG [SHOULD NOT BE TOUCHED]
WOSA_API.CONFIG = {
	API_SYNC_VERSION = 1.7,
	API_SYNC_RESOURCE = GetCurrentResourceName(),
}

------------------------------
--- API (FROM WOSA) EVENTS ---
------------------------------

TriggerEvent('WOSA:USER_DATA:LIBRARY:SERVER:GET_DATA', function(data) Wosa = data end)

--------------------------------
--- API (MAIN EVENTS) EVENTS ---
--------------------------------

-- @ON RESOURCE START
AddEventHandler('onResourceStart', function(resource)
	if resource == WOSA_API.CONFIG.API_SYNC_RESOURCE then
		local send_data = {resource = WOSA_API.CONFIG.API_SYNC_RESOURCE, version = WOSA_API.CONFIG.API_SYNC_VERSION}
		TriggerEvent('WOSA:API_SYNC:DATA_WRITE', source, 'add_resource', send_data)
	end
end)

-- @ON RESOURCE STOP
AddEventHandler('onResourceStop', function(resource)
	if resource == WOSA_API.CONFIG.API_SYNC_RESOURCE then
		local send_data = {resource = WOSA_API.CONFIG.API_SYNC_RESOURCE, version = WOSA_API.CONFIG.API_SYNC_VERSION}
		TriggerEvent('WOSA:API_SYNC:DATA_WRITE', source, 'rem_resource', send_data)
	end
end)