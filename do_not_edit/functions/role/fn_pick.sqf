#include "..\..\script_component.hpp"

if (isDedicated) exitWith {};

////////////////////////////////////////////////////////////////////////////////////////////////
private _ghostmakecom = [
    "ghostmakecom",
    "Communications",
    "", {
        player call FUNC(makecom);
        player 
    }, {true}, {},
    [_area]
] call ACE_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _ghostmakecom] call ACE_interact_menu_fnc_addActionToObject;

////////////////////////////////////////////////////////////////////////////////////////////////
private _ghostmakeeng = [
    "ghostmakeeng",
    "Engineering",
    "", {
        player call FUNC(makeeng);
    }, {true}, {},
    [_area]
] call ACE_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _ghostmakeeng] call ACE_interact_menu_fnc_addActionToObject;

////////////////////////////////////////////////////////////////////////////////////////////////
private _ghostmakemed = [
    "ghostmakemed",
    "Medical",
    "", {
        player call FUNC(makemed);
    }, {true}, {},
    [_area]
] call ACE_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _ghostmakemed] call ACE_interact_menu_fnc_addActionToObject;

////////////////////////////////////////////////////////////////////////////////////////////////

private _ghostmakewep = [
    "ghostmakewep",
    "Weapons",
    "", {
        player call FUNC(makewep);
    }, {true}, {},
    [_area]
] call ACE_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _ghostmakewep] call ACE_interact_menu_fnc_addActionToObject;

////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////
private _ghostFIX = [
    "ghostfix",
    "FIX Perms",
    "", {
        player call FUNC(role);
        player call FUNC(rank);
    }, {true}, {},
    [_area]
] call ACE_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _ghostFIX] call ACE_interact_menu_fnc_addActionToObject;


