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
	API_CONNECTOR_TYPE = 'Loading',
	API_SYNC_RESOURCE = GetCurrentResourceName(),
}

------------------------------
--- API (FROM WOSA) EVENTS ---
------------------------------

CreateThread(function()
	local ex = '_V1' if GetConvar('wosa.connector', 'v.1') == 'v.2' then ex = '_V2' end
	WOSA_API.CONFIG.API_CONNECTOR_TYPE = ex
	TriggerEvent('WOSA:USER_DATA:LIBRARY:SERVER:GET_DATA'..ex, function(data) Wosa = data end)
end)

--------------------------------
--- API (MAIN EVENTS) EVENTS ---
--------------------------------

RegisterNetEvent('WOSA:PUBLIC_API:GET_TYPE_TO_CLIENT')
AddEventHandler('WOSA:PUBLIC_API:GET_TYPE_TO_CLIENT', function()
	TriggerClientEvent('WOSA:PUBLIC_API:GET_TYPE_TO_CLIENT', source, WOSA_API.CONFIG.API_CONNECTOR_TYPE)
end)

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
