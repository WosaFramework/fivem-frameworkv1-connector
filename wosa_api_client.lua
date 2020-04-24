--------------------------------
--- WOSA API - OFFICIAL FILE ---
--------------------------------

------------------
--- API CONFIG ---
------------------

-- @ARRAY API REGISTER
Wosa = nil

-- @LOADING VAR
local LoadingConnectorVersion = nil

------------------------------
--- API (FROM WOSA) EVENTS ---
------------------------------

CreateThread(function()
    TriggerServerEvent('WOSA:PUBLIC_API:GET_TYPE_TO_CLIENT')
    
    while LoadingConnectorVersion == nil do
        Wait(0)
    end
    
    TriggerEvent('WOSA:USER_DATA:LIBRARY:SERVER:GET_DATA'..LoadingConnectorVersion, function(data) Wosa = data end)
end)

RegisterNetEvent('WOSA:PUBLIC_API:GET_TYPE_TO_CLIENT')
AddEventHandler('WOSA:PUBLIC_API:GET_TYPE_TO_CLIENT', function()
	TriggerClientEvent('WOSA:PUBLIC_API:GET_TYPE_TO_CLIENT', source, WOSA_API.CONFIG.API_CONNECTOR_TYPE)
end)
