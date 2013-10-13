private["_position","_tent","_location","_isOk","_backpack","_tentType","_trg","_key"];

_playerPos = 	getPosATL player;
_item = "ItemTent" in magazines player;
_location = player modeltoworld [0,3,0];
_location set [2,0];
_building = nearestObject [(vehicle player), "HouseBase"];
_isOk = [(vehicle player),_building] call fnc_isInsideBuilding;

if (["concrete",dayz_surfaceType] call fnc_inString) then { _isOk = true; diag_log ("surface concrete"); };

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

	_dir = round(direction player);	
	
	player removeMagazine "ItemATent";
	player playActionNow "Medic";
	sleep 1;
	
	_dis=20;
	_sfx = "tentunpack";
	[player,_sfx,0,true,_dis] call dayz_zombieSpeak;  
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	sleep 5;
	_tent = createVehicle ["garage_repart", _location, [], 0, "CAN_COLLIDE"];
	_tent setdir _dir;
	_tent setpos _location;
	player reveal _tent;
	_location = getPosATL _tent;

	_tent setVariable ["characterID",dayz_characterID,true];

	dayzPublishObj = [dayz_characterID,_tent,[_dir,_location],"garage_repart"];
	publicVariable "dayzPublishObj";
	
	cutText [localize "str_success_tent_pitch", "PLAIN DOWN"];