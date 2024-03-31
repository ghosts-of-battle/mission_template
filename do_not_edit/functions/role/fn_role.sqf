#include "..\..\script_component.hpp"

if (isDedicated) exitwith {};
if!(local player)exitWith{};
if (hasinterface) then {

    private _playerUID = getplayerUID player;

    switch (true) do {
        case (_playerUID in ROLES_MEDIC) : {
            player setVariable ["ace_medical_medicclass", 1, true];
            systemChat format ["Applied Medic to %1!", name player];
        };
    };
     switch (true) do {
        case (_playerUID in ROLES_DR) : {
            player setVariable ["ace_medical_medicclass", 2, true];
            systemChat format ["Applied Dr to %1!", name player];
        };
    };
    switch (true) do {
        case (_playerUID in ROLES_ENG) : {
            player setVariable ["ACE_isEOD", true, true];
            player setVariable ["ace_isEngineer", 1, true];
            systemChat format ["Applied Engineer to %1!", name player];
        };
    };
    switch (true) do {
        case (_playerUID in ROLES_ADVENG) : {
            player setVariable ["ACE_isEOD", true, true];
            player setVariable ["ace_isEngineer", 2, true];
            systemChat format ["Applied ADV Engineer to %1!", name player];
        };
    };
    switch (true) do {
        case (_playerUID in ROLES_COM) : {
            player setVariable ["ghost_iscom", true, true];
            systemChat format ["Applied Comunications to %1!", name player];
        };
    };
};
