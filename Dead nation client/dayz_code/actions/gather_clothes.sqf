private["_item","_isTaken","_qty","_text","_string","_type"];
_item = _this select 3;
_type = typeOf _item;
_isTaken = _item getVariable["clothesTaken",false];
_isPlayer = typeOf _item in AllPlayers_A3;
_hasClothes = typeOf cursorTarget in ["Camo1_DZ","Sniper1_DZ","Bandit1_DZ","Survivor2_DZ","Survivor3_DZ"];

player removeAction s_player_stealclothes;
s_player_stealclothes = -1;


if (!_isTaken) then {
	_text = getText (configFile >> "CfgVehicles" >> _type >> "displayName");
	
	player playActionNow "Medic";
	_dis=10;
	_sfx = "gut";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;  
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

	_item setVariable ["clothesTaken",true,true];
    
	sleep 6;
	_string = format["You've taken the %1's clothing.",_text];
	cutText [_string, "PLAIN DOWN"];
    _itemDrop = createVehicle ["groundweaponHolder", position player, [], 0, "CAN_COLLIDE"];
    _itemDrop addMagazineCargoGlobal [format["Skin_%1",_type], 1];
};