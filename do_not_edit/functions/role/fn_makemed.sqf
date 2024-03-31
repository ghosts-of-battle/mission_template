#include "..\..\script_component.hpp"

if (isDedicated) exitwith {};

if (hasinterface) then {
    player setVariable ["ghost_iscom", false, true];
    player setUnitTrait ["UAVHacker", false];
    player setVariable ["ACE_isEOD", false, true];
    player setVariable ["ace_isEngineer", 0, true];

    player setVariable ["ace_medical_medicclass", 2, true];

    player setVariable["draWhitelisted", false, true];
    daoWhitelisted=false;
};
systemChat format ["Applied Medic to %1!", name player];