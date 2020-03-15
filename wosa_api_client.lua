--------------------------------
--- WOSA API - OFFICIAL FILE ---
--------------------------------

------------------
--- API CONFIG ---
------------------

-- @ARRAY API REGISTER
Wosa = nil

------------------------------
--- API (FROM WOSA) EVENTS ---
------------------------------

TriggerEvent('WOSA:USER_DATA:LIBRARY:SERVER:GET_DATA', function(data) Wosa = data end)