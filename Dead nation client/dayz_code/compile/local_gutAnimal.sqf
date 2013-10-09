private["_animalbody","_qty","_rawfoodtype","_ehLoc"];
_animalbody = _this select 0;
_qty = _this select 1;
_isPlayer = typeOf _animalbody in AllPlayers_A3;
_rawfoodtype =   getText (configFile >> "CfgSurvival" >> "Meat" >> typeOf _animalbody >> "rawfoodtype");
if (_animalbody isKindOf "zZombie_base") then {
_rawfoodtype =   getText (configFile >> "CfgSurvival" >> "Meat" >> "zZombie_base" >> "rawfoodtype");
};
if (_isPlayer) then {
_rawfoodtype =   getText (configFile >> "CfgSurvival" >> "Meat" >> "player_base" >> "rawfoodtype");
};
if (_isPlayer) then {
    	_item = createVehicle ["groundweaponHolder", position player, [], 0, "CAN_COLLIDE"];
	for "_x" from 1 to _qty do {
			_item addMagazineCargoGlobal [_rawfoodtype, 1];
		};
} else {
    	_item = createVehicle ["groundweaponHolder", position _animalbody, [], 0, "CAN_COLLIDE"];
	for "_x" from 1 to _qty do {
			_item addMagazineCargoGlobal [_rawfoodtype, 1];
		};
    
    deleteVehicle _animalbody;
    };
