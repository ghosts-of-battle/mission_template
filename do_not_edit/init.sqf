#include "..\do_not_edit\script_component.hpp"

[{
    // Disable Ambient Animals
    [{time > 0}, {enableEnvironment [false, false];}] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_directCall;

// skipTime random 24;

if (isServer) then {
    ["ace_captiveStatusChanged", {
        params ["_unit", "_state", "_reason"];

        if ((getPos _unit) inArea prison_marker_or_trigger_name) then {
            _unit setVariable ["detained", true, true];
        };
    }] call CBA_fnc_addEventHandler;

    [{
        [getPos prison_marker_or_trigger_name, [side player], -10] call ALIVE_fnc_updateSectorHostility;
    }, 3600, []] call CBA_fnc_addPerFrameHandler;
};

if(isServer) then {
 
	// -------------------------------------------------------------------------------------------------------------
	// override default data 
	// see script/staticData.sqf
	["MISSION INIT - Waiting"] call ALIVE_fnc_dump;
 
	waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};
 
	["MISSION INIT - Continue"] call ALIVE_fnc_dump;
 
	// override static data settings
	call compile (preprocessFileLineNumbers "edit_me\staticData.sqf");

	["MISSION INIT - Static data override loaded"] call ALIVE_fnc_dump;
	// -------------------------------------------------------------------------------------------------------------
};

/* VCOM ------------------------------------------------------------------------------------------------------------- */
[] spawn VCM_fnc_VcomInit;