private ["_objects"];

_objects = nearestObjects [getPosATL player, ["Car", "Helicopter", "Motorcycle", "Ship", "C_Offroad_01_F", "TentStorage", "garage_repart"], 10];
{
	//["dayzUpdateVehicle",[_x,"gear"]] call callRpcProcedure;
	dayzUpdateVehicle = [_x,"gear"];
	publicVariable "dayzUpdateVehicle";
	
} foreach _objects;

private["_dialog","_magazineArray","_control","_item","_val","_max"];

disableSerialization;
_dialog = 			_this select 0;
_magazineArray = 	[];

_config = configFile >> "CfgMagazines";
_data = [];

for "_i" from 0 to (count _config)-1 do {
  _current = _config select _i;
  if(isClass _current) then {
    if(getNumber(_current>>"scope")==2 && getText(_current>>"picture")!="" &&
      getNumber(_current>>"count")>=5
    ) then {
      _data=_data+[configName _current];
    };
  };
};

/*
//Primary Mags
for "_i" from 109 to 120 do 
{
	_control = 	_dialog displayCtrl _i;
	_item = 	gearSlotData _control;
	_val =		gearSlotAmmoCount _control;
	_max = 		getNumber (configFile >> "CfgMagazines" >> _item >> "count");
	if (_item != "") then {
		if (_item == "BoltSteel") then { _item = "WoodenArrow" };
		if (_val != _max) then {
			_magazineArray set [count _magazineArray,[_item,_val]];
		} else {
			_magazineArray set [count _magazineArray,_item];
		};
	};
	diag_log("PRIMARY MAGS");
};
*/
/*
//Secondary Mags
for "_i" from 122 to 129 do 
{
	_control = 	_dialog displayCtrl _i;
	_item = 	gearSlotData _control;
	_val =		gearSlotAmmoCount _control;
	_max = 		getNumber (configFile >> "CfgMagazines" >> _item >> "count");
	if (_item != "") then {
		if (_val != _max) then {
			_magazineArray set [count _magazineArray,[_item,_val]];
		} else {
			_magazineArray set [count _magazineArray,_item];
		};
	};
	diag_log("SECONDARY MAGS");
};
*/
dayz_unsaved = true;
dayz_Magazines = _data;