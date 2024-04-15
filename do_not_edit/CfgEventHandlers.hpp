class Extended_PreInit_EventHandlers {
    class tinter_furniture_pre_init {
        init = "call compile preprocessFileLineNumbers 'do_not_edit\furniture\XEH_preInit.sqf'";
    };
    class TP_settings {
        init = "call compile preprocessFileLineNumbers 'do_not_edit\scripts\Reeveli_fnc\Rev_teleport\Rev_tp_settings.sqf'";
    };
    ghost_preInit = "0 spawn compile preprocessFileLineNumbers 'do_not_edit\preinit.sqf'";

};

class Extended_PostInit_EventHandlers {
    ghost_postInit = "0 spawn compile preprocessFileLineNumbers 'do_not_edit\postInit.sqf'";
};