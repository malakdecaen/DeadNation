/*
_item spawn player_wearClothes;
TODO: female
*/
private["_item","_isFemale","_itemNew","_item","_onLadder","_model","_hasclothesitem","_config","_text"];
_item = (_this select 3) select 0;
call gear_ui_init;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};

_config = configFile >> "CfgMagazines";
_text = getText (_config >> _item >> "displayName");

if (vehicle player != player) exitWith {cutText ["You may not change clothes while in a vehicle", "PLAIN DOWN"]};

_isFemale = ((typeOf player == "SurvivorW2_DZ")||(typeOf player == "BanditW1_DZ"));
if (_isFemale) exitWith {cutText ["Currently Female Characters cannot change to this skin. This will change in a future update.", "PLAIN DOWN"]};

private["_itemNew","_myModel","_humanity","_isBandit","_isHero"];
_myModel = (typeOf player);
_humanity = player getVariable ["humanity",0];
_isBandit = _humanity < -14000;
_isHero = _humanity > 50000;
_isGuardian = _humanity > 12000;
_isAssassin = _humanity < -15000;
_itemNew = "Skin_" + _myModel;

if ( !(isClass(_config >> _itemNew)) ) then {
	_itemNew = if (!_isFemale) then {"Skin_Survivor2_DZ"} else {"Skin_SurvivorW2_DZ"}; 
};

switch (_item) do {
	case "Skin_Sniper1_DZ": {
		_model = "Survivor2_DZ";
	};
	case "Skin_Camo1_DZ": {
		_model = "Survivor2_DZ";
	};
	case "Skin_Soldier1_DZ": {
		_model = "Survivor2_DZ";
	};
	case "Skin_Survivor2_DZ": {
		_model = "Survivor2_DZ";
		if (_isBandit and !_isAssassin) then {
			_model = "Survivor2_DZ";
		};
		if (_isHero and !_isGuardian) then {
			_model = "Survivor2_DZ";
		};
		if (_isBandit and _isAssassin) then {
			_model = "Survivor2_DZ";
		};
		if (_isHero and _isGuardian) then {
			_model = "Survivor2_DZ";
		};
	};
};

