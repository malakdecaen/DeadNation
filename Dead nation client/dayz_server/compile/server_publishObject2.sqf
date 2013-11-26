private ["_class","_uid","_charID","_object","_worldspace","_key","_fuel","__code"];
//[dayz_characterID,_tent,[_dir,_location],"TentStorage"]
_charID =		_this select 0;
_object = 		_this select 1;
_worldspace = 	_this select 2;
_class = 		_this select 3;
_fuel =         _this select 4;
_code =         _this select 5; //added to pick up the code which we passed from player_build.sqf

_allowed = [_object, "Server"] call check_publishobject;
if (!_allowed) exitWith { };


//diag_log ("PUBLISH: Attempt " + str(_object));

//get UID
_uid = _worldspace call dayz_objectUID2;
//Send request
_key = format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance, _class, 0 , _charID, _worldspace, [], [], _fuel,_uid];
//diag_log ("HIVE: WRITE: "+ str(_key));
_key call server_hiveWrite;

_object setVariable ["ObjectUID", _uid,true];
_code = _fuel * 1000; 
_object setVariable ["Code", _code,true]; //set the Code to the Object

if (_object isKindOf "TentStorage") then {
	_object addMPEventHandler ["MPKilled",{_this call vehicle_handleServerKilled;}];
};

dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_object];

//diag_log ("PUBLISH: Created " + (_class) + " with ID " + _uid);
