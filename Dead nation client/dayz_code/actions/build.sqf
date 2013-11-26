private["_location","_isOk","_dir","_classname","_item"];
_location = player modeltoworld [0,1,0];
_location set [2,0];
_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_isWater = 		(surfaceIsWater _location) or dayz_isSwimming;

if(_isWater) exitWith {cutText [localize "str_player_26", "PLAIN DOWN"];};
if(_onLadder) exitWith {cutText [localize "str_player_21", "PLAIN DOWN"];};

if (vehicle player != player) exitWith {cutText ["You may not build while in a vehicle", "PLAIN DOWN"]};

_item =			_this select 3;
_itemname = 	getText (configFile >> "CfgMagazines" >> _item >> "displayName");
_classname = 	getText (configFile >> "CfgMagazines" >> _item >> "ItemActions" >> "Build" >> "create");
_text = 		getText (configFile >> "CfgVehicles" >> _classname >> "displayName");

_hasbuilditem = _item in magazines player;

if (!_hasbuilditem) exitWith {cutText [format[(localize "str_player_31"),_itemname,"build"] , "PLAIN DOWN"]};

_dir = getDir player;
player removeMagazine _item;

player playActionNow "Medic";
r_isBuilding = true;
if (_item == "TrapBear") then {
    player removeAction s_doBTrap;
    s_doBTrap = -1;
};
if (_item == "ItemTankTrap") then {
    player removeAction s_doTTrap;
    s_doTTrap = -1;
};
if (_item == "ItemWire") then {
    player removeAction s_doWire;
    s_doWire = -1;
};
if (_item == "ItemSandbag") then {
    player removeAction s_doSand;
    s_doSand = -1;
};

_curTime = time;
waitUntil {time - _curTime >= 1};

_dis=20;
_sfx = "repair";
[player,_sfx,0,false,_dis] call dayz_zombieSpeak;  
[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
_curTime = time;
waitUntil {time - _curTime >= 5};
	
player allowDamage false;
_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
_object setDir _dir;
player reveal _object;

cutText [format[localize "str_build_01",_text], "PLAIN DOWN"];
_object setVariable ["CharacterID",dayz_characterID,true];

//["dayzPublishObj",[dayz_characterID,_object,[_dir,_location],_classname]] call callRpcProcedure;
dayzPublishObj = [dayz_characterID,_object,[_dir,_location],_classname];
publicVariable "dayzPublishObj";
r_isBuilding = false;

_curTime = time;
waitUntil {time - _curTime >= 2};
player allowDamage true;