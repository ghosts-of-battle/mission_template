#include "..\..\script_component.hpp"
if (isDedicated) exitwith {};

if (hasinterface) then {
    player setVariable ["ghost_iscom", true, true];
    player setUnitTrait ["UAVHacker", true];
    player setVariable ["ace_medical_medicclass", 0, true];
    player setVariable ["ACE_isEOD", false, true];
    player setVariable ["ace_isEngineer", 0, true];

        [
        {player setVariable["draWhitelisted",TRUE,TRUE];player setVariable["draAccessDrones",TRUE,TRUE];player setVariable["draAccessCruise",TRUE,TRUE];player setVariable["draAccessSensors",TRUE,TRUE];},
        [draReady],
        5
    ] call CBA_fnc_waitAndExecute;

    [
        {daoWhitelisted=true;daoJTACmode=true;},
        [daoReady],
        5
    ] call CBA_fnc_waitAndExecute;
};
systemChat format ["Applied Communications to %1!", name player];
