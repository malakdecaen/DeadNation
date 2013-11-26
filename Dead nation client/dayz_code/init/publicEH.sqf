//Medical Event Handlers
"norrnRaLW"   		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\publicEH\load_wounded.sqf"};
"norrnRLact"		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\load\load_wounded.sqf"};
"norrnRDead"   		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\publicEH\deadState.sqf"};
"usecBleed"			addPublicVariableEventHandler {_id = (_this select 1) spawn fnc_usec_damageBleed};
"usecBandage"		addPublicVariableEventHandler {(_this select 1) call player_medBandage};
"usecInject"		addPublicVariableEventHandler {(_this select 1) call player_medInject};
"usecEpi"			addPublicVariableEventHandler {(_this select 1) call player_medEpi};
"usecTransfuse"		addPublicVariableEventHandler {(_this select 1) call player_medTransfuse};
"usecMorphine"		addPublicVariableEventHandler {(_this select 1) call player_medMorphine};
"usecPainK"			addPublicVariableEventHandler {(_this select 1) call player_medPainkiller};
"dayzHit" 			addPublicVariableEventHandler {(_this select 1) call fnc_usec_damageHandler};
"dayzHitV" 			addPublicVariableEventHandler {(_this select 1) call fnc_usec_damageVehicle};
"dayzHideBody"		addPublicVariableEventHandler {hideBody (_this select 1)};
"dayzGutBody"		addPublicVariableEventHandler {(_this select 1) spawn local_gutAnimal};
"dayzDelLocal"		addPublicVariableEventHandler {(_this select 1) call object_delLocal};
"dayzVehicleInit"	addPublicVariableEventHandler {(_this select 1) call fnc_vehicleEventHandler};
"dayzHumanity"		addPublicVariableEventHandler {(_this select 1) spawn player_humanityChange};
"dayz_serverObjectMonitor"		addPublicVariableEventHandler {dayz_serverObjectMonitor = dayz_safety};

//Both

//Server only
if (isServer) then {
	"dayzDeath"			addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};
	"dayzDiscoAdd"		addPublicVariableEventHandler {dayz_disco set [count dayz_disco,(_this select 1)];};
	"dayzDiscoRem"		addPublicVariableEventHandler {dayz_disco = dayz_disco - [(_this select 1)];};
	"dayzPlayerSave"	addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerSync;};
	"dayzPublishObj"	addPublicVariableEventHandler {(_this select 1) call server_publishObj};
	"dayzPublishObj2"	addPublicVariableEventHandler {(_this select 1) call server_publishObj2};
	"dayzUpdateVehicle" addPublicVariableEventHandler {_id = (_this select 1) spawn server_updateObject};
	"dayzLogin"			addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerLogin};
	"dayzLogin2"		addPublicVariableEventHandler {(_this select 1) call server_playerSetup};
	"dayzPlayerMorph"	addPublicVariableEventHandler {(_this select 1) call server_playerMorph};
	"dayzUpdate"		addPublicVariableEventHandler {_id = (_this select 1) spawn dayz_processUpdate};
	"dayzLoginRecord"	addPublicVariableEventHandler {_id = (_this select 1) spawn dayz_recordLogin};
	"dayzCharSave"		addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerSync};
	//Checking
	"dayzSetFuel"		addPublicVariableEventHandler {(_this select 1) spawn local_setFuel};
	"dayzSetFix"		addPublicVariableEventHandler {(_this select 1) call object_setFixServer};
	"dayzDeleteObj"		addPublicVariableEventHandler {(_this select 1) spawn server_deleteObj};
	"atp"				addPublicVariableEventHandler { _array = _this select 1; diag_log format["TELEPORT REVERT: %1 (%2) from %3 to %4 now at %5", _array select 0, _array select 1, _array select 2, _array select 3, _array select 4];};
};

//Client only
if (!isDedicated) then {
	"dayzSetDate"		addPublicVariableEventHandler {setDate (_this select 1)};
	"dayzFlies"			addPublicVariableEventHandler {(_this select 1) call spawn_flies};
	"dayzRoadFlare"		addPublicVariableEventHandler {(_this select 1) spawn object_roadFlare};
	"norrnRaDrag"   	addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\publicEH\animDrag.sqf"};
	"norrnRnoAnim"  	addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\publicEH\noAnim.sqf"};
	"changeCharacter"	addPublicVariableEventHandler {(_this select 1) call player_serverModelChange};
	"dayzSwitch"		addPublicVariableEventHandler {(_this select 1) call server_switchPlayer};
	"dayzFire"			addPublicVariableEventHandler {nul=(_this select 1) spawn BIS_Effects_Burn};
    "r_player_sendDead" addPublicVariableEventHandler {if (name player in (_this select 1)) then { r_player_isDead = true; };};
    "dayzSwitchMove"    addPublicVariableEventHandler {[(_this select 1)] call fnc_usec_switchMove;};
};
