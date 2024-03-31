#include "..\..\..\do_not_edit\script_component.hpp"
/* DO NOT EDIT ABOVE ------------------------------------------------------------------------------------------------ */

private _worldName = getText (configFile >> "CfgWorlds" >> worldName >> "description");
private _serverName = if (serverName != "") then {serverName} else {"localhost"}; 

private _abilityMedic = "";
if (!(isNil {player getUnitTrait "medic"}) && !(isNil {player getVariable "ACE_medical_medicClass"})) then {
    switch (player getVariable "ACE_medical_medicClass") do {
        case 1: { _abilityMedic = " <font color='#ffc61a'>medic</font> training" };
        case 2: { _abilityMedic = " <font color='#ffc61a'>doctor</font> training" };
        default { _abilityMedic = "" };
    };
};

private _abilityEngineer = "";
if (!(isNil {player getUnitTrait "engineer"}) && !(isNil {player getVariable "ACE_isEngineer"})) then {
    switch (player getVariable "ACE_isEngineer") do {
        case 1: { _abilityEngineer = " <font color='#ffc61a'>engineer</font> training" };
        case 2: { _abilityEngineer = " <font color='#ffc61a'>advanced engineer</font> training" };
        default { _abilityEngineer = "" };
    };
};
private _ability = "";
if (_abilityMedic != "" || _abilityEngineer != "") then {
    private _separateMedicEngineer = if ( (_abilityEngineer == "") && (_abilityMedic == "") ) then { ", " } else {""};
    _ability = formatText["You have%1%2%3.<br/><br/>", _abilityMedic, _separateMedicEngineer, _abilityEngineer];
};

private _document = format [
"<font size=20>Information</font><br/>Welcome to %1 on %2.<br/>Your currently on <font color='#ffc61a'>%3</font>.<br/><br/>
<br/><br/>
%3
Good luck and have fun!
<br/><br/>
-----------------------------------------------------------------
<br/><br/>This mission is currently running Ghosts of Battle Mission Framework version: <font color='#ffc61a'>%5</font>.
", briefingName, _worldName, _serverName, _ability, VERSION];

player createDiaryRecord["mission", ["Information", _document], taskNull, "", false];
