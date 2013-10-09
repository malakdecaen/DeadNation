private["_item","_hasKnife","_hasKnifeBlunt","_hasHarvested","_qty","_text","_string","_type"];
_item = _this select 3;
_hasKnife = 	"ItemKnife" in magazines player;
_hasKnifeBlunt = 	"ItemKnifeBlunt" in magazines player;
_type = typeOf _item;
_hasHarvested = _item getVariable["meatHarvested",false];
_isPlayer = typeOf _item in AllPlayers_A3;
_config = 		configFile >> "CfgSurvival" >> "Meat" >> _type;
if (_item isKindOf "zZombie_base") then {
    _config = 		configFile >> "CfgSurvival" >> "Meat" >> "zZombie_base";
};
if (_isPlayer) then {
    _config = 		configFile >> "CfgSurvival" >> "Meat" >> "player_base";
};

player removeAction s_player_butcher;
s_player_butcher = -1;


if ((_hasKnife or _hasKnifeBlunt) and !_hasHarvested) then {
	//Get Animal Type
	_isListed =		isClass (_config);
	_text = getText (configFile >> "CfgVehicles" >> _type >> "displayName");
	
	player playActionNow "Medic";
    if (_isPlayer) then {
        _humanity = player getVariable ["humanity",0];
        _humanity = _humanity - 1;
        player setVariable ["humanity",_humanity, true];
        _dis=20;
        _sfx = "gut";
        [player,_sfx,0,false,_dis] call dayz_zombieSpeak;  
        [player,_dis,true,(getPosATL player)] spawn player_alertZombies;
    } else {
	_dis=10;
	_sfx = "gut";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;  
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
    };

	_item setVariable ["meatHarvested",true,true];
	
	_qty = 2;	
	if (_isListed) then {
		_qty =	getNumber (_config >> "yield");
	};
	
	if (_hasKnifeBlunt) then { _qty = round(_qty / 2); };
	
	_array = [_item,_qty];
    
	sleep 6;
	_string = format[localize "str_success_gutted_animal",_text,_qty];
	cutText [_string, "PLAIN DOWN"];
		_array spawn local_gutAnimal;
};