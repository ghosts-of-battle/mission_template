/*
	Author: TheTimidShade

	Description:
		Handles the CBA key press for the admin panel actions

	Parameters:
		0: ARRAY - Keypress info passed by key press event
		
	Returns:
		NOTHING
*/

private _shift = _this#2;

if (player call admp_fnc_isAdmin) then {
	if (_shift) then {
		createDialog "GHOST_AdminMessage";
	} else {
		createDialog "GHOST_AdminPanel";
	};
} else {
	createDialog "GHOST_AdminMessage";
};