#include "..\do_not_edit\script_component.hpp"
class CfgFunctions {
    #include "..\do_not_edit\furniture\func.hpp"
    #include "..\do_not_edit\scripts\Reeveli_fnc\Reevelis_fnc.hpp"
    #include "..\do_not_edit\jebus\cfgFunctions.hpp"
    #include "..\do_not_edit\adminpanel\CfgFunctions.hpp"
    #include "..\do_not_edit\zade_boc\functions.hpp"
    #include "..\do_not_edit\Vcom\cfgFunctions.hpp"
    class PREFIX {
        tag = QUOTE(PREFIX);
        class functions {
            file = "do_not_edit\functions\env";
            class environmentControl {};
        };
        class core {
            file = "do_not_edit\functions\core";
            class logToServer {};
        };
        class rank {
            file = "do_not_edit\functions\rank";
            class rank {};
        };
        class role {
            file = "do_not_edit\functions\role";
            class drongo {};
            class fix {};
            class makecom {};
            class makeeng {};
            class makemed {};
            class makewep {};
            class pick {};
            class role {};
        };
        class arsenal {
            file = "do_not_edit\functions\arsenal";
            class FullArsenal {};
            class arsenal {preInit = 1;};
        };
        class AI {
            file = "do_not_edit\functions\ai";
            class onDisembark {};
        };
        class init {
            file = "do_not_edit\functions\init";
            class init_diary {};
        };
        class documents {
            file = "edit_me\functions\documents";
            class Doc_Info {};
            class DocRadio_Med {};
            class DocRadio_CAS {};
            class DocChklist {};
        };
        class radio{
            file = "do_not_edit\functions\radio";
            class setRadio {postInit = 1;};
            class assignChannels {};
            class giveRadios {};
            class clearRadios {};
            class handleRadioSetup {};
            class fitsInventory {};
            class forceAddItem {};
        };      
    };
};
