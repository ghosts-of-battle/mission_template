#include "..\do_not_edit\script_component.hpp"

/* ------------------------------------------------------------------------------------------------------------------ */
/*                                               Check installed moduels                                              */
/* ------------------------------------------------------------------------------------------------------------------ */
EGVAR(patches,usesACE)          = isClass (configFile >> "CfgPatches" >> "ace_main");
EGVAR(patches,usesACEArsenal)   = isClass (configFile >> "CfgPatches" >> "ace_arsenal");
EGVAR(patches,usesACETagging)   = isClass (configFile >> "CfgPatches" >> "ace_tagging");
EGVAR(patches,usesACEX)         = isClass (configFile >> "CfgPatches" >> "acex_main");
EGVAR(patches,usesKat)          = isClass (configFile >> "CfgPatches" >> "kat_main");
EGVAR(patches,usesACRE)         = isClass (configFile >> "CfgPatches" >> "acre_sys_core");
EGVAR(patches,usesTFAR)         = isClass (configFile >> "CfgPatches" >> "task_force_radio");
EGVAR(patches,usesAlive)        = isClass (configFile >> "CfgPatches" >> "ALiVE_main");
EGVAR(patches,usesZen)          = isClass (configFile >> "CfgPatches" >> "zen_main");
/* ------------------------------------------------------------------------------------------------------------------ */
/*                                                    CBA Settings                                                    */
/* ------------------------------------------------------------------------------------------------------------------ */
private _ghostSettings = "Ghosts of Battle Mission Settings";
private _rank_hint = "list of steam user ID's";
private _role_hint = "list of steam user ID's";
private _role_hintm = "list of steam user ID's, pick only Dr or medic not both";
private _role_hinte = "list of steam user ID's, pick only ENG or ADV ENG not both";


/* Documents -------------------------------------------------------------------------------------------------------- */
[ 
    QEGVAR(Settings,showDiaryRecords),
    "CHECKBOX",
    ["Documents","Allow the mission to write diary help documents."],
    [_ghostSettings, "Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
/* roles ------------------------------------------------------------------------------------------------------------ */
[
    "ROLES_MEDIC",
    "EDITBOX",
    ["Medic", _role_hintm],
    [_ghostSettings,"Roles"], 
    [],
    1 
] call CBA_fnc_addSetting;
[
    "ROLES_DR",
    "EDITBOX",
    ["DR", _role_hintm],
    [_ghostSettings,"Roles"], 
    [],
    1 
] call CBA_fnc_addSetting;

[
    "ROLES_ENG",
    "EDITBOX",
    ["Engineer", _role_hinte],
    [_ghostSettings,"Roles"], 
    [],
    1 
] call CBA_fnc_addSetting;
[
    "ROLES_ADVENG",
    "EDITBOX",
    ["ADV Engineer", _role_hinte],
    [_ghostSettings,"Roles"], 
    [],
    1 
] call CBA_fnc_addSetting;

[
    "ROLES_COM",
    "EDITBOX",
    ["Communications", _role_hint],
    [_ghostSettings,"Roles"], 
    [],
    1 
] call CBA_fnc_addSetting;


/* ranks ------------------------------------------------------------------------------------------------------------ */
[
    "RANKS_CORPORAL",
    "EDITBOX",
    ["Corporal", _rank_hint],
    [_ghostSettings,"Rank"], 
    [],
    1 
] call CBA_fnc_addSetting;

[
    "RANKS_SERGEANT",
    "EDITBOX",
    ["Sergeant", _rank_hint],
    [_ghostSettings,"Rank"], 
    [],
    1 
] call CBA_fnc_addSetting;

[
    "RANKS_LIEUTENANT",
    "EDITBOX",
    ["Lieutenant", _rank_hint],
    [_ghostSettings,"Rank"], 
    [],
    1 
] call CBA_fnc_addSetting;

[
    "RANKS_CAPTAIN",
    "EDITBOX",
    ["Captain", _rank_hint],
    [_ghostSettings,"Rank"], 
    [],
    1 
] call CBA_fnc_addSetting;

[
    "RANKS_MAJOR",
    "EDITBOX",
    ["Major", _rank_hint],
    [_ghostSettings,"Rank"], 
    [],
    1 
] call CBA_fnc_addSetting;

[
    "RANKS_COLONEL",
    "EDITBOX",
    ["Colonel", _rank_hint],
    [_ghostSettings,"Rank"], 
    [],
    1 
] call CBA_fnc_addSetting;
