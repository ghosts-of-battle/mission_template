class admp
{
	class init 
	{
		file = "do_not_edit\adminpanel";
		class init {postInit = 1;};
	};
	class admin 
	{
		file = "do_not_edit\adminpanel\functions\admin";
		class ban {};
		class kick {};
		class toggleSpectator {};
		class toggleZeus {};
		class toggleServerLock {};
		class updateCuratorEditableObjects {};
		class updateServerStats {};
		class createZeusModule {};
		class compileAndExec {};
		class executeOnMachine {};
		class loadPreviousCode {};
		class grantAdminAccess {};
	};
	class main 
	{
		file = "do_not_edit\adminpanel\functions\main";
		class getPlayerList {};
		class refresh {};
		class displayOpened {};
		class displayClosed {};
		class updatePlayerList {};
		class playerFromSelection {};
		class handleClientVars {};
		class LBSelectionChanged {};
		class setReturnValue {};
		class handleSpectatorAdminpanel {};
		class updateToggleControls {};
		class refreshPIPcam {};
		class playerSetup {postInit = 1;};
		class isAdmin {};
		class panelButtonPressed {};
	};
	class map 
	{
		file = "do_not_edit\adminpanel\functions\map";
		class getMarkerInfo {};
		class updateMarker {};
		class updateMapMarkers {};
		class handleMapClick {};
		class updateSelectedMarker {};
		class playerFromMapClick {};
		class centreMapOnPlayer {};
	};
	class medical 
	{
		file = "do_not_edit\adminpanel\functions\medical";
		class getPlayerMedicalInfo {};
		class updatePlayerMedicalInfo {};
		class fullHeal {};
		class wakeUp {};
	};
	class message_display
	{
		file = "do_not_edit\adminpanel\functions\message_display";
		class messageDisplayOpened {};
		class populateRecipientList {};
		class loadMessageList {};
		class messageHistorySelection {};
		class sendMessage {};
		class receiveMessage {};
	};
	class mission 
	{
		file = "do_not_edit\adminpanel\functions\mission";
		class endMission {};
		class populateEndingList {};
		class logPlayerShots {};
	};
	class mod_validation 
	{
		file = "do_not_edit\adminpanel\functions\mod_validation";
		class validateMods { postInit = 1; };
		class logUnknownMod {};
	};
	class playerinfo 
	{
		file = "do_not_edit\adminpanel\functions\playerinfo";
		class getPlayerInfo {};
		class updatePlayerInfo {};
		class assignGroup {};
		class loadPlayerSkills {};
		class populateSkillCombos {};
		class applySkills {};
	};
	class utility
	{
		file = "do_not_edit\adminpanel\functions\utility";
		class arsenal {};
		class ghost {};
		class godmode {};
		class infiniteAmmo {};
		class toggleLocalFiredEH {};
	};
	class vehicle 
	{
		file = "do_not_edit\adminpanel\functions\vehicle";
		class forceDismount {};
		class rearmVehicle {};
		class refuelVehicle {};
		class repairVehicle {};
		class vehicleUnstuck {};
	};
};