private["_characterID","_minutes","_newObject","_playerID","_key","_playerName","_playerID","_myGroup","_group","_newObject", "_killer", "_weapon", "_message", "_distance","_loc_message","_newObjectName","_killerName","_killerPlayerID"];
//[unit, weapon, muzzle, mode, ammo, magazine, projectile]
_characterID = 	_this select 0;
_minutes =		_this select 1;
_newObject = 	_this select 2;
_playerID = 	_this select 3;
_playerName = 	name _newObject;

_newObject removeAllEventHandlers "MPHit";

_newObjectName = _newObject getVariable["bodyName", "nil"];
_killer = _newObject getVariable["AttackedBy", "nil"];
_killerName = _newObject getVariable["AttackedByName", "nil"];

if ((_killerName != "nil") and (_newObjectName != "nil")) then
{
	_weapon = _newObject getVariable["AttackedByWeapon", "nil"];
	_distanceNum = _newObject getVariable["AttackedFromDistance", 0];
	_displayname = getText (configFile >> 'CfgWeapons' >> _weapon >> 'displayName');
    if ((!isNil "_distanceNum") and (!isNil "_weapon")) then {
        if((_weapon != "nil") and (_weapon != "") and (_distanceNum > 0)) then {
            _distance = round _distanceNum;
            if (_newObjectName == _killerName) then 
            {
                _message = format["\n\n\n%1 killed himself",_newObjectName];
                _loc_message = format["PKILL: %1 killed himself", _newObjectName];
            }
            else 
            {
                _killerPlayerID = getPlayerUID _killer;
                _message = format["\n\n\n%1 was killed by %2 ( %3 | %4m )",_newObjectName, _killerName, _displayname, str _distance];
                _loc_message = format["PKILL: %1 (%5) was killed by %2 (%6) with weapon %3 from %4m", _newObjectName, _killerName, _weapon, _distance, _playerID, _killerPlayerID];
            };

            [[[_message], { cutText [format['%1',(_this select 0)],'PLAIN DOWN']; }], "BIS_fnc_spawn", true, false] call BIS_fnc_MP;
        };
    };
	_newObject setVariable["AttackedBy", "nil", true];
	_newObject setVariable["AttackedByName", "nil", true];
	_newObject setVariable["AttackedByWeapon", "nil", true];
	_newObject setVariable["AttackedFromDistance", 0, true];
};

_newObject setVariable["processedDeath",time];
_newObject setVariable ["bodyName", _playerName, true];


if (typeName _minutes == "STRING") then 
{
	_minutes = parseNumber _minutes;
};

if (_characterID != "0") then 
{
	_key = format["CHILD:202:%1:%2:",_characterID,_minutes];
	//diag_log ("HIVE: WRITE: "+ str(_key));
	_key call server_hiveWrite;
} 
else 
{
	deleteVehicle _newObject;
};

diag_log ("PDEATH: Player Died " + _playerID);