#include "..\..\script_component.hpp"
/*
Function: GHOST_fnc_MedicalSupplies

Description:
 Used to configure basic container medical state.

Arguments:
 _container - Container the setup is applied to. <OBJECT>
 _Type - Equipment setup to add. <STRING>
 _purge - Clear the container's inventory before adding supplies? <BOOLEAN>

Examples:
 (begin example)
  [this] call GHOST_fnc_MedicalSupplies;
  [this, "MERT", true] call GHOST_fnc_MedicalSupplies;
 (end)

Author:
 MitchJC
*/
if (!isServer) exitwith {};

params [
    "_container",
    ["_Type", "NONE"],
    ["_purge", false]
];

private _VarType = _container getVariable ["GHOST_Equipment_Select", -1];

call {
    if (_VarType isEqualto 0) exitwith {_Type = "Limited"};
    if (_VarType isEqualto 1) exitwith {_Type = "Standard"};
    if (_VarType isEqualto 2) exitwith {_Type = "MERT"};
};

if (_Type isEqualTo "NONE") exitWith {};

private ["_ContainerItems"];

call {
    if (_Type isEqualTo "Limited") exitwith {
        if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
            _ContainerItems = [
                ["1Rnd_Smoke_Grenade_shell",2],
                ["1Rnd_SmokeRed_Grenade_shell",2],
                ["1Rnd_SmokeGreen_Grenade_shell",2],
                ["1Rnd_SmokeYellow_Grenade_shell",2],
                ["1Rnd_SmokePurple_Grenade_shell",2],
                ["1Rnd_SmokeBlue_Grenade_shell",2],
                ["1Rnd_SmokeOrange_Grenade_shell",2],
                ["GHOST_medbags_FirstAid", 4],
                ["ACE_EarPlugs", 4],
                ["ACE_Flashlight_MX991", 1],
                ["ToolKit", 1],
                ["Chemlight_blue", 1],
                ["Chemlight_green", 1],
                ["Chemlight_red", 1]
            ];
        } else {
            _ContainerItems = [
                ["FirstAidKit", 20]
            ];
        };
    };
    if (_Type isEqualTo "Standard") exitwith {
        if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
            _ContainerItems = [
                ["1Rnd_Smoke_Grenade_shell",2],
                ["1Rnd_SmokeRed_Grenade_shell",2],
                ["1Rnd_SmokeGreen_Grenade_shell",2],
                ["1Rnd_SmokeYellow_Grenade_shell",2],
                ["1Rnd_SmokePurple_Grenade_shell",2],
                ["1Rnd_SmokeBlue_Grenade_shell",2],
                ["1Rnd_SmokeOrange_Grenade_shell",2],
                ["GHOST_medbags_FirstAid", 4],
                ["ACE_EarPlugs", 4],
                ["ACE_Flashlight_MX991", 1],
                ["ToolKit", 1],
                ["Chemlight_blue", 1],
                ["Chemlight_green", 1],
                ["Chemlight_red", 1]
            ];
        } else {
            _ContainerItems = [
                ["FirstAidKit", 30],
                ["Medikit", 2]
            ];
        };
    };
    if (_Type isEqualTo "MERT") exitwith {
    if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
    _ContainerItems = [
        ["1Rnd_Smoke_Grenade_shell",2],
        ["1Rnd_SmokeRed_Grenade_shell",2],
        ["1Rnd_SmokeGreen_Grenade_shell",2],
        ["1Rnd_SmokeYellow_Grenade_shell",2],
        ["1Rnd_SmokePurple_Grenade_shell",2],
        ["1Rnd_SmokeBlue_Grenade_shell",2],
        ["1Rnd_SmokeOrange_Grenade_shell",2],
        ["ACE_EarPlugs", 4],
        ["ACE_Flashlight_MX991", 1],
        ["ToolKit", 1],
        ["Chemlight_blue", 10],
        ["Chemlight_green", 10],
        ["Chemlight_red", 10],
        ["ghost_medbags_DrugKit", 10],
        ["ghost_medbags_FirstAid", 20],
        ["ACE_bodyBag", 8],
        ["GHOST_medbags_MedicKit", 8],
        ["Attachable_Helistretcher", 2],
        ["ACE_surgicalKit", 2],
        ["GHOST_Stethoscope", 2],
        ["ACE_personalAidKit",8],
        ["ghost_medbags_Trauma",1]
    ];
    } else {
    _ContainerItems = [
        ["FirstAidKit", 50],
        ["Medikit", 2]
    ];
    };
    };
};

if (_purge) then {
    clearItemCargoGlobal _container;
};

{_container addItemCargoGlobal _x} foreach _ContainerItems

