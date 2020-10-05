--------------------------------
--- WOSA API - OFFICIAL FILE ---
--------------------------------



--------------------------
--- API CONFIG PRIVATE ---
--------------------------

-- @ARRAY API REGISTER
Wosa = nil

-- @LOCAL API REGISTER
local WOSA_API = {}

-- @ARRAY API CONFIG [SHOULD NOT BE TOUCHED]
WOSA_API.CONFIG = {
	API_SYNC_VERSION = 1.9,
	API_SYNC_RESOURCE = GetCurrentResourceName(),
}

------------------------------
--- API (FROM WOSA) EVENTS ---
------------------------------

TriggerEvent('WOSA:USER_DATA:LIBRARY:SERVER:GET_DATA_v2', function(data) Wosa = data end)

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

-------------------
--- TRANSLATION ---
-------------------

t = function(key, data1, data2, data3, data4, data5, data6)
	if data1 == nil then
		return Wosa.Translate.Get()[WOSA_API.CONFIG.API_SYNC_RESOURCE][Wosa.Translate.Language()][key] or Wosa.Translate.Get()[WOSA_API.CONFIG.API_SYNC_RESOURCE]['en'][key] or key
	else
		if Wosa.Translate.Get()[WOSA_API.CONFIG.API_SYNC_RESOURCE][Wosa.Translate.Language()][key] == nil and Wosa.Translate.Get()[WOSA_API.CONFIG.API_SYNC_RESOURCE]['en'][key] == nil then
			return key
		else
			local cache = Wosa.Translate.Get()[WOSA_API.CONFIG.API_SYNC_RESOURCE][Wosa.Translate.Language()][key] or Wosa.Translate.Get()[WOSA_API.CONFIG.API_SYNC_RESOURCE]['en'][key]

			if data1 ~= nil then
				cache = cache:gsub('#data1', data1)
			end

			if data2 ~= nil then
				cache = cache:gsub('#data2', data2)
			end
			
			if data3 ~= nil then
				cache = cache:gsub('#data3', data3)
			end
			
			if data4 ~= nil then
				cache = cache:gsub('#data4', data4)
			end
			
			if data5 ~= nil then
				cache = cache:gsub('#data5', data5)
			end
			
			if data5 ~= nil then
				cache = cache:gsub('#data5', data5)
			end

			if data6 ~= nil then
				cache = cache:gsub('#data6', data6)
			end

			return cache
		end
	end
end
