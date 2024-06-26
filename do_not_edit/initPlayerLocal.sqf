#include "..\do_not_edit\script_component.hpp"
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

/* kill the rabbits ------------------------------------------------------------------------------------------------- */
// Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
[{time > 0}, {enableEnvironment [false, true];}] call CBA_fnc_waitUntilAndExecute;


/* Shut the hell up  - Mute Orders and Reports ---------------------------------------------------------------------- */
{_x setSpeaker "NoVoice"} forEach playableUnits;
{_x setVariable ["BIS_noCoreConversations", true]} forEach allUnits; 
0 fadeRadio 0;
enableSentences false;

/* Initialize BIS group menu ---------------------------------------------------------------------------------------- */
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;


/* Disable CUP street lights based on lighting levels (bad performance script) -------------------------------------- */
CUP_stopLampCheck = true;

// Safety first

[Player, currentWeapon Player, true] call ace_safemode_fnc_setWeaponSafety;

[missionNamespace, "arsenalOpened", {
	player setVariable ["PlayerReady",false,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
[missionNamespace, "arsenalClosed", {
	player setVariable ["PlayerReady",true,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
player setVariable ["PlayerReady",true,true];


player call FUNC(rank);
player call FUNC(role);