private["_iItem","_iClass","_iPos","_radius","_itemTypes","_index","_item","_qty","_max","_tQty","_canType","_weights","_cntWeights","_dateNow"];
_iItem = 	_this select 0;
_iClass = 	_this select 1;
_iPos =	_this select 2;
_radius =	_this select 3;

switch (_iClass) do {
	default {
		//Item is food, add random quantity of cans along with an item (if exists)
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];

		_itemTypes = [] + ((getArray (configFile >> "cfgLoot" >> _iClass)) select 0);
		_index = dayz_CLBase find _iClass;
		_qty = 1;
		_max = ceil(random 2) + 1;
		while {_qty < _max} do {
			_tQty = round(random 1) + 1;
			_canType = _itemTypes call BIS_fnc_selectRandom;;
			_item addMagazineCargoGlobal [_canType,_tQty];
			_qty = _qty + _tQty;
		};
		if (_iItem != "") then {
			_item addMagazineCargoGlobal [_iItem,1];
		};
	};
	case "weapon": {
		//Item is a weapon, add it and a random quantity of magazines
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
        if (_iItem == "arifle_MXC_F") then {
            _iItem = ["arifle_MXC_F","arifle_MXC_Holo_F"] call BIS_fnc_selectRandom;
        };
        if (_iItem == "hgun_ACPC2_F") then {
            _iItem = ["hgun_ACPC2_F","hgun_ACPC2_snds_F"] call BIS_fnc_selectRandom;
        };
        if (_iItem == "hgun_P07_F") then {
            _iItem = ["hgun_P07_F","hgun_P07_snds_F"] call BIS_fnc_selectRandom;
        };
        if (_iItem == "hgun_Rook40_F") then {
            _iItem = ["hgun_Rook40_F","hgun_Rook40_snds_F"] call BIS_fnc_selectRandom;
        };
		_item addWeaponCargoGlobal [_iItem,1];
		_mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
		if ((count _mags) > 0) then {
			if (_mags select 0 == "Quiver") then { _mags set [0, "WoodenArrow"] }; // Prevent spawning a Quiver
			_item addMagazineCargoGlobal [(_mags select 0), (round(random 3))];
		};
	};
	case "weaponNA": {
		//Item is a weapon, add it with NO AMMO (NA)
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addWeaponCargoGlobal [_iItem,1];
	};
	case "magazine": {
		//Item is one magazine
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addMagazineCargoGlobal [_iItem,1];
	};
	case "object": {
		//Item is one magazine
		_item = createVehicle [_iItem, _iPos, [], _radius, "CAN_COLLIDE"];
	};
	case "vest": {
		//Item is one magazine
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addItemCargoGlobal [_iItem,1];
	};
	case "backpack": {
		//Item is one magazine
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addBackpackCargoGlobal [_iItem,1];
	};
	case "casque": {
		//Item is one magazine
		_itemTypes = [] + ((getArray (configFile >> "cfgLoot" >> _iClass)) select 0);
		_canType = _itemTypes call BIS_fnc_selectRandom;;
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addItemCargoGlobal [_canType,1];
	};
	case "chest": {
		//Item is one magazine
		_itemTypes = [] + ((getArray (configFile >> "cfgLoot" >> _iClass)) select 0);
		_canType = _itemTypes call BIS_fnc_selectRandom;;
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addItemCargoGlobal [_canType,1];
	};
	case "unifo": {
		//Item is one magazine
		_itemTypes = [] + ((getArray (configFile >> "cfgLoot" >> _iClass)) select 0);
		_canType = _itemTypes call BIS_fnc_selectRandom;;
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addItemCargoGlobal [_canType,1];
	};
	case "accessprim": {
		//Item is one magazine
		_itemTypes = [] + ((getArray (configFile >> "cfgLoot" >> _iClass)) select 0);
		_canType = _itemTypes call BIS_fnc_selectRandom;;
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addItemCargoGlobal [_canType,1];
	};
	case "lunette": {
		//Item is one magazine
		_itemTypes = [] + ((getArray (configFile >> "cfgLoot" >> _iClass)) select 0);
		_canType = _itemTypes call BIS_fnc_selectRandom;;
		_item = createVehicle ["groundweaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addItemCargoGlobal [_canType,1];
	};
};

// timestamp for later clearing
_dateNow = (DateToNumber date);
_item setVariable ["looted",_dateNow,true];

if ((count _iPos) > 2) then {
	_item setPosATL _iPos;
};