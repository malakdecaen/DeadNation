private["_class","_position","_dir","_group","_oldUnit","_newUnit","_currentWpn","_muzzles","_currentAnim","_currentCamera"];
_class 			= _this;

_oldInventory	= [];
_newInventory 	= [];
_position 		= getPosATL player;
_dir 			= getDir player;
_currentAnim 	= animationState player;
if (_currentAnim in ["situnarm_l_idleloop_inuh1y","amovpsitmstpsnonwnondnon_ground","amovpercmstpsnonwnondnon"]) then {
    _currentAnim = "amovpercmstpsnonwnondnon";
};

//Get PlayerID
private ["_playerUID"];
	_playerUID = "";
	if (count playableUnits == 0 and isServer) then {
		//In Single Player
		isSinglePlayer = true;
		player sidechat "Single player Mode detected!";
		//_id = [42,"SinglePlayer"] spawn server_onPlayerConnect;
		_playerUID = "42";
	} else {
		_playerUID = getPlayerUID player;
	};

//BackUp Weapons and Mags
_oldInventory = [player,["ammo"]] call SES_SaveGear;

diag_log str(_oldInventory);

	
//diag_log format["Attempting to switch model - %1", _source];

//Secure Player for Transformation
	player setPosATL dayz_spawnPos;

//BackUp Player Object
	_oldUnit = player;
/***********************************/
//DONT USE player AFTER THIS POINT
/***********************************/

//Create New Character
	//[player] joinSilent grpNull;
	_group 		= createGroup west;
	_newUnit 	= _group createUnit [_class,dayz_spawnPos,[],0,"NONE"];

	_newUnit 	setPosATL _position;
	_newUnit 	setDir _dir;
	_newInventory = _oldInventory;


//Clear New Character
	{_newUnit removeMagazine _x;} forEach  magazines _newUnit;
	removeAllWeapons _newUnit;	

    removeUniform _newUnit;
    removeHeadgear _newUnit;
    removeVest _newUnit;
    removeAllAssignedItems _newUnit;

//Equip New Character
		[_newUnit,_newInventory,["ammo"],"player_switchModel"] spawn fnc_setLoadout;
		//Debug Message
		diag_log "Swichtable Unit Created. Equipment:";
		diag_log str(_newInventory);

	

//Make New Unit Playable
	addSwitchableUnit _newUnit;
	setPlayable _newUnit;
	selectPlayer _newUnit;

//Clear and delete old Unit
	removeAllWeapons _oldUnit;
	{_oldUnit removeMagazine _x;} forEach  magazines _oldUnit;
		
	deleteVehicle _oldUnit;
	
	[[[player, _currentanim], { (_this select 0) switchMove (_this select 1); }], "BIS_fnc_spawn", true, false] call BIS_fnc_MP;
    player switchMove _currentanim;
	player disableConversation true;
	
	player setVariable ["bodyName",dayz_playerName,true];

	_playerUID=getPlayerUID player;
	_playerObjName = format["player%1",_playerUID];
	call compile format["%1 = player;",_playerObjName];
	publicVariable _playerObjName;