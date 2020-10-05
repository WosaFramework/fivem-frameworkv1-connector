--------------------------------
--- WOSA API - OFFICIAL FILE ---
--------------------------------


------------------
--- API CONFIG ---
------------------

-- @ARRAY API REGISTER
Wosa = nil

-- @CACHE
local cached_resource = GetCurrentResourceName()

------------------------------
--- API (FROM WOSA) EVENTS ---
------------------------------

TriggerEvent('WOSA:USER_DATA:LIBRARY:SERVER:GET_DATA_v2', function(data) Wosa = data end)

-------------------
--- TRANSLATION ---
-------------------

t = function(key, data1, data2, data3, data4, data5, data6)
	if data1 == nil then
		return Wosa.Translate.Get()[cached_resource][Wosa.Translate.Language()][key] or Wosa.Translate.Get()[cached_resource]['en'][key] or key
	else
		if Wosa.Translate.Get()[cached_resource][Wosa.Translate.Language()][key] == nil and Wosa.Translate.Get()[cached_resource]['en'][key] == nil then
			return key
		else
			local cache = Wosa.Translate.Get()[cached_resource][Wosa.Translate.Language()][key] or Wosa.Translate.Get()[cached_resource]['en'][key]

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
