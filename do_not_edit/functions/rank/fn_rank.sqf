#include "..\..\script_component.hpp"
if (isDedicated) exitwith {};

if (hasinterface) then {
    _playerUID = getplayerUID player;
    
    switch (true) do {
        case (_playerUID in RANKS_CORPORAL) : {
            player setRank "CORPORAL";
        };
        case (_playerUID in RANKS_SERGEANT) : {
            player setRank "SERGEANT";
        };
        case (_playerUID in RANKS_LIEUTENANT) : {
            player setRank "LIEUTENANT";
        };
        case (_playerUID in RANKS_CAPTAIN) : {
            player setRank "CAPTAIN";
        };
        case (_playerUID in RANKS_MAJOR) : {
            player setRank "MAJOR";
        };
        case (_playerUID in RANKS_COLONEL) : {
            player setRank "COLONEL";
        };
        default {
            player setRank "PRIVATE";
        };
    };
};