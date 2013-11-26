private["_position","_tent","_location","_isOk","_backpack","_tentType","_trg","_key","_fuel","_code","_coder"];
//check if can pitch here

_playerPos = 	getPosATL player;
_item = "Itemshackprint" in magazines player;
//_hastentitem = _item;
_location = player modeltoworld [0,2.5,0];
_location = [_location select 0,_location select 1,0];
_building = nearestObject [(vehicle player), "HouseBase"];
_isOk = count (_location isFlatEmpty [0.2,0,0,4,0,false,player]) > 0;
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
_isOk = count (_location isFlatEmpty [1,0,0,4,0,false,player]) > 0;
	_dir = round(direction player);	
	if (_isOk) then {
	//wait a bit
	player removeMagazine "Itemshackprint";
	player playActionNow "Medic";
	sleep 1;
	
	_dis=2;
	_sfx = "tentunpack";
	[player,_sfx,10,true,_dis] call dayz_zombieSpeak;  
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	sleep 5;
	//place tent (local)
	_tent = createVehicle ["garage_repart", _location, [], 0, "CAN_COLLIDE"];
	_tent setdir _dir;
	_tent setpos _location;
	player reveal _tent;
	_location = getPosATL _tent;
	//remove the tent item
	_code = random(9999);
	_tent setVariable ["characterID",dayz_characterID,true];
    _tent setVariable ["Code",_code,true];
	
	//player setVariable ["tentUpdate",["Land_A_tent",_dir,_location,[dayz_tentWeapons,dayz_tentMagazines,dayz_tentBackpacks]],true];

	//["dayzPublishObj",[dayz_characterID,_tent,[_dir,_location],"garage_repart"]] call callRpcProcedure;
	_fuel = _code / 1000; //added to calculate valid fuel value for the database
    dayzPublishObj = [dayz_characterID,_tent,[_dir,_location],"garage_repart",_fuel]; 
	publicVariableServer "dayzPublishObj";
	if (isServer) then {
		dayzPublishObj call server_publishObj2; //recreate the database entry with the new code stored in the fuel field
	};
    cret = _tent addAction ["Config New Code", "\shackdonator\keypad\fnc_keyPad\editCode.sqf"];
	hint "You have Build a shack , now config a 4 digicode !\n Remember the Code ,you can't config a new again!!"
	} else {
		cutText [localize "str_fail_tent_pitch", "PLAIN DOWN"];
	
		//add back tentbag
		player addMagazine _item;
	};