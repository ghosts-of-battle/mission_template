#include "..\..\script_component.hpp"
/*
Function: GHOST_fnc_FullArsenal

Description:
    Fills Arsenal with predefined equipment dependent on _Type. Each Arsenal can be a different type
    and have a different duration.

    Arguments:
    _object - Object the Arsenal is applied to.  <OBJECT>
    _type - Type of Arsenal, can be 0 = "ghost", 1 = "WINTER", 3 = "INCOGNITO" <STRING>
    _Duration - How long in minutes until the Arsenal is removed. 0 makes it permanent. <SCALAR>

1000+ weapons
1000+ atachments
1500+ face bling

ca
500 vests
2000 uniforms
3000+ headgear (ok 1200ish are ball caps but still)
200 + backpacks

Examples:
    (begin example)
    [this] call GHOST_fnc_FullArsenal;
    [this, "2", 50] call GHOST_fnc_FullArsenal;
    [this, "1"] call GHOST_fnc_FullArsenal;
    [MyAmmoCrate, "INCOGNITO", 0] call GHOST_fnc_FullArsenal;
    (end)

Author:
    MitchJC
*/

if (!isServer) exitwith {};

params [
    "_object",
    ["_Duration", 0]
];


if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
    [_object, false] call ace_arsenal_fnc_initBox;
} else {
    ["AmmoboxInit", [_object, false]] call BIS_fnc_arsenal;
};

private [
    "_import"
];

#include "..\..\..\edit_me\arsenal_import.sqf"

if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
    [_object, _import, true] call ace_arsenal_fnc_addVirtualItems;
    [_object, false] call ace_dragging_fnc_setCarryable;
    [_object, false] call ace_dragging_fnc_setDraggable;

} else {
    [_object, _import, true] call BIS_fnc_addVirtualItemCargo;
    [_object, _AvailableItems, true] call BIS_fnc_addVirtualItemCargo;
};
    {
    _x addCuratorEditableObjects [[_object], false];
} forEach allCurators;

_handle = [
    {
        (_this select 0) params ["_object", "_duration"];

        if (_duration == 0) exitwith {
            [_handle] call CBA_fnc_removePerFrameHandler;
            };

        if (time > (_duration * 60)) exitwith {
            deletevehicle _object;
            [_handle] call CBA_fnc_removePerFrameHandler;
            };
    }, 60, [_object, _duration]
] call CBA_fnc_addPerFrameHandler;