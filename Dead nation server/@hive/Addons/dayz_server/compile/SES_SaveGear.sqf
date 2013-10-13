/*
	--- Script fait par =[TTK]= Yourry --- 
	--- Sauvegarde de l'inventaire ---
	--- ARMA 3 --- 
	--- S.E.S ---
	-- V0.90--
*/

private ["_weapons", "_primary", "_launcher", "_handgun", "_uniform", "_vest", "_backpack", "_casque", "_lunette", "_magazines", "_items", "_primitems", "_secitems", "_handgunitems", "_uitems", "_vitems", "_bitems"];


_player = _this select 0;

_weapons = weapons _player;

_primary = [];
_primary set [count _primary,primaryWeapon _player];

_launcher = [];
_launcher set [count _launcher,secondaryWeapon _player];

_handgun = [];
_handgun set [count _handgun,handGunWeapon _player];

_uniform = [];
_uniform set [count _uniform,uniform _player];

_vest = [];
_vest set [count _vest,vest _player];

_backpack = [];
_backpack set [count _backpack,backpack _player];

_casque = [];
_casque set [count _casque,headgear _player];

_lunette = [];
_lunette set [count _lunette,goggles _player];


_curent = [];
_curent set [count _curent,currentWeapon _player];

_chargeur_primaire = [];
if((count primaryWeaponMagazine _player) > 0)then{	
	_chargeur_primaire = primaryWeaponMagazine _player;		
	if( (primaryWeapon _player) == (currentWeapon _player))then{
		_chargeur_primaire  set [count _chargeur_primaire ,((weaponState _player)select 4)];
	};
};

_chargeur_secondaire = [];
if((count secondaryWeaponMagazine _player) > 0)then{
	_chargeur_secondaire = secondaryWeaponMagazine _player;		
	if( (secondaryWeapon _player)== (currentWeapon _player))then{
		_chargeur_secondaire set [count _chargeur_secondaire,((weaponState _player)select 4)];
	};
};


_chargeur_tertiaire = [];
if((count handgunMagazine _player) > 0)then{
	_chargeur_tertiaire = handgunMagazine _player;	
	if( (handGunWeapon _player)== (currentWeapon _player))then{
		_chargeur_tertiaire set [count _chargeur_tertiaire,((weaponState _player)select 4)];
	};
};

_magazines = magazines _player;
_items = assignedItems _player;
_primitems = primaryWeaponItems _player;
_secitems = secondaryWeaponItems _player;
_handgunitems = handGunItems _player;
_uitems = uniformItems _player;
_vitems = vestItems _player;
_bitems = backPackItems _player;

//DEbug
_nb = 0;
diag_log"--------------------------";
diag_log format ["SES_Save_gear---NAME PLAYER: %1",(name _player)];	
	{		
		diag_log format ["_x_%2: %1",_x,_nb];	
		_nb = _nb + 1;
	} foreach [_uniform,_vest,_backpack,_magazines,_primary,_launcher,_handgun,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_casque,_lunette,_weapons,_chargeur_primaire,_chargeur_secondaire,_chargeur_tertiaire,_curent];
diag_log"--------------------------";

[_uniform,_vest,_backpack,_magazines,_primary,_launcher,_handgun,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_casque,_lunette,_weapons,_chargeur_primaire,_chargeur_secondaire,_chargeur_tertiaire,_curent]
