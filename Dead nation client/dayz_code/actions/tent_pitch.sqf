private["_position","_tent","_location","_isOk","_backpack","_tentType","_trg","_key"];
//check if can pitch here

_playerPos = 	getPosATL player;
_item = "ItemTent" in magazines player;
//_hastentitem = _item;
_location = player modeltoworld [0,3,0];
_location set [2,0];
_building = nearestObject [(vehicle player), "HouseBase"];
_isOk = [(vehicle player),_building] call fnc_isInsideBuilding;
//_isOk = true;

//diag_log ("Pitch Tent: " + str(_isok) );

//_config = configFile >> "CfgMagazines" >> _item;
//_text = getText (_config >> "displayName");

//if (!_hastentitem) exitWith {cutText [format[(localize "str_player_31"),_text,"pitch"] , "PLAIN DOWN"]};

//blocked
if (["concrete",dayz_surfaceType] call fnc_inString) then { _isOk = true; diag_log ("surface concrete"); };
//Block Tents in pounds
_objectsPond = 		nearestObjects [_playerPos, [], 10];
	{
		_isPond = ["pond",str(_x),false] call fnc_inString;
		if (_isPond) then {
			_pondPos = (_x worldToModel _playerPos) select 2;
			if (_pondPos < 0) then {
				_isOk = true;
			};
		};
	} forEach _objectsPond;

//diag_log ("Pitch Tent: " + str(_isok) );

	_dir = round(direction player);	
	
	//wait a bit
	player removeMagazine "ItemTent";
	player playActionNow "Medic";
	sleep 1;
	
	_dis=20;
	_sfx = "tentunpack";
	[player,_sfx,10,true,_dis] call dayz_zombieSpeak;  
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	sleep 5;
	//place tent (local)
	_tent = createVehicle ["TentStorage", _location, [], 0, "CAN_COLLIDE"];
	_tent setdir _dir;
	_tent setpos _location;
	player reveal _tent;
	_location = getPosATL _tent;
	//remove the tent item

	_tent setVariable ["characterID",dayz_characterID,true];

	//player setVariable ["tentUpdate",["Land_A_tent",_dir,_location,[dayz_tentWeapons,dayz_tentMagazines,dayz_tentBackpacks]],true];

	//["dayzPublishObj",[dayz_characterID,_tent,[_dir,_location],"TentStorage"]] call callRpcProcedure;
	dayzPublishObj = [dayz_characterID,_tent,[_dir,_location],"TentStorage"];
	publicVariable "dayzPublishObj";
	
	cutText [localize "str_success_tent_pitch", "PLAIN DOWN"];