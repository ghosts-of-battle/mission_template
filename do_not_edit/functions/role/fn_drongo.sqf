#include "..\..\script_component.hpp"

// _function	The function you wish to execute.  <CODE>
// _args	Parameters passed to the function executing.  (optional) <ANY>
// _delay	The amount of time in seconds before the code is executed.  (optional, default: 0) <NUMBER>



if!(local player)exitWith{};
if (hasInterface) then {
    _playerUID = getPlayerUID player;
    [
        {player setVariable["draWhitelisted",TRUE,TRUE];},
        [(!(isNil"draReady") && _playerUID in ROLES_COM)],
        5
    ] call CBA_fnc_waitAndExecute;

    [
        {daoWhitelisted=true;daoJTACmode=true;},
        [(!(isNil"draReady") && _playerUID in ROLES_COM)],
        5
    ] call CBA_fnc_waitAndExecute;

    [
        {daoWhitelisted=true;daoJTACmode=false;},
        [(!(isNil"daoReady") && _playerUID in ROLES_COM)],
        5
    ] call CBA_fnc_waitAndExecute;
};
 

