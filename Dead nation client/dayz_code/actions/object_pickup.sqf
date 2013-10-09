private["_array","_type","_classname","_holder","_config","_isOk","_muzzles","_playerID","_claimedBy","_text","_control","_dialog","_item","_val","_max","_bolts","_quivers","_quiver","_broken"];
_array = _this select 3;
_type = _array select 0;
_classname = _array select 1;
_holder = _array select 2;
_oArray = ["PartWheel","PartVRotor","PartGeneric","PartGlass","PartEngine","PartFueltank","ItemTent","TrapBear","ItemTankTrap","ItemWire","ItemJerrycan","PartWoodPile"];

_playerID = getPlayerUID player;
_text = getText (configFile >> _type >> _classname >> "displayName");

_holder setVariable["claimed",_playerID,true];

if(_classname isKindOf "TrapBear") exitwith {deleteVehicle _holder;};

player playActionNow "PutDown";
if (_classname == "ItemFlashlight") then {
	_classname = 'MeleeFlashlight';
};
if (_classname == "ItemCrowbar") then {
	player addWeapon 'MeleeCrowbar';
	_classname = 'MeleeCrowbar';
};
if (_classname == "MeleeCrowbar") then {
	player addMagazine 'crowbar_swing';
};
if (_classname == "ItemHatchet") then {
	player addWeapon 'MeleeHatchet';
	_classname = 'MeleeHatchet';
};
if (_classname == "MeleeHatchet") then {
		player addMagazine 'hatchet_swing';
};
if (_classname == "ItemMachete") then {
	player addWeapon 'MeleeMachete';
	_classname = 'MeleeMachete';
};
if (_classname == "MeleeMachete") then {
		player addMagazine 'Machete_swing';
};

_hasMeleeNo = ((_classname != "MeleeMachete") and (_classname != "MeleeCrowbar") and (_classname != "MeleeHatchet") and (_clasname != "MeleeFlashlight"));								
_broken = false;
if(_classname == "WoodenArrow") then {
	if (20 > random 100) then {
		_broken = true;
	};
};
if (_broken) exitWith { deleteVehicle _holder; cutText [localize "str_broken_arrow", "PLAIN DOWN"] };

sleep 0.25;

_claimedBy = _holder getVariable["claimed",0];

if (_claimedBy != _playerID) exitWith {cutText [format[(localize "str_player_beinglooted"),_text] , "PLAIN DOWN"]};

if(_classname isKindOf "Bag_Base_EP1") then {
	diag_log("Picked up a bag: " + _classname);
};

_config = (configFile >> _type >> _classname);
    if !(_classname in ["NVGoggles"]) then {
_isOk = [player,_config] call BIS_fnc_invAdd;
if (_isOk) then {
	deleteVehicle _holder;
	if (_classname in ["MeleeHatchet","MeleeCrowbar","MeleeMachete"]) then {

		if (_type == "cfgWeapons") then {
			_muzzles = getArray(configFile >> "cfgWeapons" >> _classname >> "muzzles");
			//_wtype = ((weapons player) select 0);
			if (count _muzzles > 1) then {
				player selectWeapon (_muzzles select 0);
			} else {
				player selectWeapon _classname;
			};
		};
	};
} else {
if (_hasMeleeNo) then {
	if (_classname in _oArray) then {
    holderPickup = _holder;
    PickupClass = _classname;
		[] spawn {
        _vWeight = loadVest player;
        _bWeight = loadBackpack player;
        waitUntil{(!isNil "_vWeight") and (!isNil "_bWeight")};
            if ((_vWeight <= 0.93) or (_bWeight <= 0.93)) then {
                deleteVehicle holderPickup;
                player addMagazine PickupClass;
            } else {
	holderPickup setVariable["claimed",0,true];
	cutText [localize "STR_DAYZ_CODE_2", "PLAIN DOWN"];
            };
        };
	} else {
	_holder setVariable["claimed",0,true];
	cutText [localize "STR_DAYZ_CODE_2", "PLAIN DOWN"];
	if (_classname == "MeleeCrowbar") then {
		player removeMagazine 'crowbar_swing';
	};
	if (_classname == "MeleeHatchet") then {
			player removeMagazine 'hatchet_swing';
	};
	if (_classname == "MeleeMachete") then {
			player removeMagazine 'Machete_swing';
	};
	};
    };
};
    }else {
    if (_classname in assignedItems player) then {
	cutText [format["You already have a %1!",_text], "PLAIN DOWN"];
    } else {
	deleteVehicle _holder;
        player addItem _classname;
        player assignItem _classname;
        };
    };
