scriptName "Functions\misc\fn_selfActionsA3.sqf";
/***********************************************************
	ADD ACTIONS FOR SELF
	- Function
	- [] call fnc_usec_selfActionsA3;
************************************************************/
private["_menClose","_hasBandage","_hasEpi","_hasMorphine","_hasBlood","_vehicle","_inVehicle","_color","_part"];

_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
_bag = unitBackpack player;
_classbag = typeOf _bag;
_isWater = 		(surfaceIsWater (position player));
_hasFuelE = 	"ItemJerrycanEmpty" in magazines player;
//boiled Water
_hasbottleitem = "ItemWaterbottle" in magazines player;
_hasbottleitemE = "ItemWaterbottleUnfilled" in magazines player;
_hasWood = 		"PartWoodPile" in magazines player;
_hasSPack =      "SurvivalPack" in magazines player;
_hastinitem = false;
{
    if (_x in magazines player) then {
        _hastinitem = true;
    };

} forEach boil_tin_cans;

//A3 Med Definitions and other vars by Papzzz, Pwnoz0r and MistaD

_unit = 			player;
_injured = 			player getVariable ["USEC_injured", false];
_inPain = 			player getVariable ["USEC_inPain", false];
_legsBroke = 		player getVariable ["hit_legs", 0] >= 1;
_armsBroke = 		player getVariable ["hit_hands", 0] >= 1;
_hasBandage = 		"ItemBandage" in magazines player;
_hasMorphine = 		"ItemMorphine" in magazines player;
_hasHeatpack = 		"ItemHeatpack" in magazines player;
_hasPainkillers = 	"ItemPainkiller" in magazines player;
_hasAntibiotic =	"ItemAntibiotic" in magazines player;
_hasHatchet =       "MeleeHatchet" in weapons player;
_hasMRE =		"FoodMRE" in magazines player;
//FOOD
//_hasFood = 			["FoodCanBakedBeans", "FoodCanSardines", "FoodCanFrankBeans", "FoodCanPasta", "FoodSteakCooked"];
//_hasFood2 = 		"FoodCanSardines" in magazines player;
//_hasFood3 = 		"FoodCanFrankBeans" in magazines player;
//_hasFood4 = 		"FoodCanPasta" in magazines player;
//_hasFood5 = 		"FoodSteakCooked" in magazines player;
//DRINK
//_hasDrink =			["ItemSodaCoke", "ItemSodaPepsi", "ItemSodaMdew"];
//_hasDrink2 =		"ItemSodaPepsi" in magazines player;
//_hasDrink3 =		"ItemSodaMdew" in magazines player;
_nearLightG =   nearestObject [player,"Chemlight_green"];
_nearLightB =   nearestObject [player,"Chemlight_blue"];
_nearLightY =   nearestObject [player,"Chemlight_yellow"];
_nearLightR =   nearestObject [player,"Chemlight_red"];
_canPickLightG = false;
_canPickLightY = false;
_canPickLightB = false;
_canPickLightR = false;

if (!isNull _nearLightG) then {
  if (_nearLightG distance player < 1) then {
    _canPickLightG = isNull (_nearLightG getVariable ["owner",objNull]);
  };
};
if (!isNull _nearLightY) then {
  if (_nearLightY distance player < 1) then {
    _canPickLightY = isNull (_nearLightY getVariable ["owner",objNull]);
  };
};
if (!isNull _nearLightB) then {
  if (_nearLightB distance player < 1) then {
    _canPickLightB = isNull (_nearLightB getVariable ["owner",objNull]);
  };
};
if (!isNull _nearLightR) then {
  if (_nearLightR distance player < 1) then {
    _canPickLightR = isNull (_nearLightR getVariable ["owner",objNull]);
  };
};

//End of Code
_hasKnife = 	"ItemKnife" in magazines player;
_hasToolbox = 	"ItemToolbox" in magazines player;
_hasTent = 		"ItemTent" in magazines player;
_hasATent = 	"ItemATent" in magazines player;
_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;

    
_canFill = 		count (nearestObjects [position player, ["Land_pumpa","Land_water_tank"], 4]) > 0;
_isPond = 		false;
_isWell = 		false;
_pondPos = 		[];
_objectsWell = 	[];
_objectsPond = 	[];


if (!_canFill) then {
	_objectsWell = 	nearestObjects [getPosATL player, [], 4];
	{
		//Check for Well
		_isWell = ["_well",str(_x),false] call fnc_inString;
		if (_isWell) then {_canFill = true};
	} forEach _objectsWell;
};

if (!_canFill) then {
	_objectsPond = 		nearestObjects [getPosATL player, [], 50];
	{
		//Check for pond
		_isPond = ["pond",str(_x),false] call fnc_inString;
		if (_isPond) then {
			_pondPos = (_x worldToModel getPosATL player) select 2;
			if (_pondPos < 0) then {
				_canFill = true;
			};
		};
	} forEach _objectsPond;
};

_canDo = (!r_drag_sqf and !r_player_unconscious and !_onLadder);

//Off topic functions
/*
	if (player == player) then {
			s_getAlive = player addAction["Force Gear Save", "\z\addons\dayz_code\system\forceGearSave.sqf"];
	};
*/
//End off topic functions

//Start of A3 Scroll functions by Papzzz and Pwnoz0r

//Grab GChem
if (_canPickLightG and !dayz_hasLight) then {
  if (s_player_grabflare < 0) then {
    _text = "Green Chemlight";
    s_player_grabflare = player addAction [format[localize "str_actions_medical_15",_text], "\z\addons\dayz_code\actions\flare_pickup.sqf",_nearLightG, 1, false, true, "", ""];
    s_player_removeflare = player addAction [format[localize "str_actions_medical_17",_text], "\z\addons\dayz_code\actions\flare_remove.sqf",_nearLightG, 1, false, true, "", ""];
  };
} else {
  player removeAction s_player_grabflare;
  player removeAction s_player_removeflare;
  s_player_grabflare = -1;
  s_player_removeflare = -1;
};
//Grab BChem
if (_canPickLightB and !dayz_hasLight) then {
  if (s_player_grabflare2 < 0) then {
    _text = "Blue Chemlight";
    s_player_grabflare2 = player addAction [format[localize "str_actions_medical_15",_text], "\z\addons\dayz_code\actions\flare_pickup.sqf",_nearLightB, 1, false, true, "", ""];
    s_player_removeflare2 = player addAction [format[localize "str_actions_medical_17",_text], "\z\addons\dayz_code\actions\flare_remove.sqf",_nearLightB, 1, false, true, "", ""];
  };
} else {
  player removeAction s_player_grabflare2;
  player removeAction s_player_removeflare2;
  s_player_grabflare2 = -1;
  s_player_removeflare2 = -1;
};
//Grab YChem
if (_canPickLightY and !dayz_hasLight) then {
  if (s_player_grabflare3 < 0) then {
    _text = "Yellow Chemlight";
    s_player_grabflare3 = player addAction [format[localize "str_actions_medical_15",_text], "\z\addons\dayz_code\actions\flare_pickup.sqf",_nearLightY, 1, false, true, "", ""];
    s_player_removeflare3 = player addAction [format[localize "str_actions_medical_17",_text], "\z\addons\dayz_code\actions\flare_remove.sqf",_nearLightY, 1, false, true, "", ""];
  };
} else {
  player removeAction s_player_grabflare3;
  player removeAction s_player_removeflare3;
  s_player_grabflare3 = -1;
  s_player_removeflare3 = -1;
};
//Grab RChem
if (_canPickLightR and !dayz_hasLight) then {
  if (s_player_grabflare4 < 0) then {
    _text = "Red Chemlight";
    s_player_grabflare4 = player addAction [format[localize "str_actions_medical_15",_text], "\z\addons\dayz_code\actions\flare_pickup.sqf",_nearLightR, 1, false, true, "", ""];
    s_player_removeflare4 = player addAction [format[localize "str_actions_medical_17",_text], "\z\addons\dayz_code\actions\flare_remove.sqf",_nearLightR, 1, false, true, "", ""];
  };
} else {
  player removeAction s_player_grabflare4;
  player removeAction s_player_removeflare4;
  s_player_grabflare4 = -1;
  s_player_removeflare4 = -1;
};
    //Allow player to use the Survival Pack
    if (_vehicle == player and _hasSPack and ((_legsBroke or _armsBroke) or (r_player_infected) or (_inPain) or (_injured) or (r_player_blood < 12000))) then {
        if (s_player_survivalpackA3 < 0) then {
            s_player_survivalpackA3 = player addAction [format["Use Survival Pack%1"], "\z\addons\dayz_code\medical\spack.sqf",[_unit], 1, true, true, "", "'SurvivalPack' in magazines player"];
        };
    } else {
        player removeAction s_player_survivalpackA3;
        s_player_survivalpackA3 = -1;
    };
    //Allow player to use heatpacks
    if (_vehicle == player and (dayz_temperatur < 35.5) and _hasHeatpack) then {
    		if (s_player_heatpackA3 < 0) then {
			s_player_heatpackA3 = player addAction [format["Use Heatpack%1"], "\z\addons\dayz_code\medical\heatpack.sqf",[_unit], 1, true, true, "", "'ItemHeatpack' in magazines player"];
		};
    } else {
		player removeAction s_player_heatpackA3;
		s_player_heatpackA3 = -1;
    };
    
	//Allow player to use Morphine
	if (_vehicle == player and (_legsBroke or _armsBroke) and _hasMorphine) then {
		if (s_player_morphineA3 < 0) then {
			s_player_morphineA3 = player addAction [format["Use Morphine%1"], "\z\addons\dayz_code\medical\morphine.sqf",[_unit], 1, true, true, "", "'ItemMorphine' in magazines player"];
		};
	} else {
		player removeAction s_player_morphineA3;
		s_player_morphineA3 = -1;
	};
	if (_vehicle == player and _hasAntibiotic and _canDo) then {
		if (s_player_antibioticA3 < 0) then {
			s_player_antibioticA3 = player addAction [format["Use Antibiotics%1"], "\z\addons\dayz_code\medical\antibiotics.sqf",[_unit], 1, true, true, "", "'ItemAntibiotic' in magazines player"];
		};
	} else {
		player removeAction s_player_antibioticA3;
		s_player_antiboioticA3 = -1;
	};
	//Allow player to use Painkillers
	if (_vehicle == player and _inPain and _hasPainkillers) then {
		if (s_player_painkillerA3 < 0) then {
			s_player_painkillerA3 = player addAction [format["Use Painkillers%1"], "\z\addons\dayz_code\medical\painkiller.sqf",[_unit], 1, true, true, "", "'ItemPainkiller' in magazines player"];
		};
	} else {
		player removeAction s_player_painkillerA3;
		s_player_painkillerA3 = -1;
	};

	//Allow player to bandage
	if (_vehicle == player and _injured and _hasBandage) then {
		if (s_player_bandageA3 < 0) then {
			s_player_bandageA3 = player addAction [format["Use Bandage%1"], "\z\addons\dayz_code\medical\bandageSelf.sqf",[_unit], 1, true, true, "", "'ItemBandage' in magazines player"];
		};
	} else {
		player removeAction s_player_bandageA3;
		s_player_bandageA3 = -1;
	};

	//Allow player to chop trees
	if (_vehicle == player and (["forest",dayz_surfaceType] call fnc_inString) and _hasHatchet) then {
		if (s_player_chopA3 < 0) then {
			s_player_chopA3 = player addAction [format["Chop Wood%1"], "\z\addons\dayz_code\actions\player_chopWood.sqf",[_unit], 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_chopA3;
		s_player_chopA3 = -1;
	};

	//Allow player to setup a camp fire
	if (_vehicle == player and _hasWood) then {
		if (s_player_makefireA3 < 0) then {
			s_player_makefireA3 = player addAction [format["Place Campfire%1"], "\z\addons\dayz_code\actions\player_makefire.sqf",[_unit], 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_makefireA3;
		s_player_makefireA3 = -1;
	};

	_foodItems = no_output_food + food_with_output + meatcooked;
	_hasFood = false;
		{
			if (_x in magazines player) then {
				_hasFood = true;
			};
		} forEach _foodItems; 
	
	//Allow player to nom nom
	if(_vehicle == player and _hasFood) then {
		if ((r_player_blood < 10000) and (dayz_hunger3 < 0)) then {
		
		player removeAction dayz_hunger2;
		dayz_hunger2 = -1;
		dayz_hunger3 = player addAction [format["Eat%1"], "\z\addons\dayz_code\actions\player_eat.sqf",[], 1, false, true, "", "player == player"];
		
		}; if ((r_player_blood >= 10000) and (dayz_hunger2 < 0)) then {
		player removeAction dayz_hunger3;
		dayz_hunger3 = -1;
		if(dayz_hunger >= 270) then {
			dayz_hunger2 = player addAction [format["Eat%1"], "\z\addons\dayz_code\actions\player_eat.sqf",[], 1, false, true, "", "player == player"];
		};
		};
	} else	{
		player removeAction dayz_hunger2;
		dayz_hunger2 = -1;
		player removeAction dayz_hunger3;
		dayz_hunger3 = -1;
	};

	_drinkItems = no_output_drink + drink_with_output;
	_hasDrink = false;
		{
			if (_x in magazines player) then {
				_hasDrink = true;
			};
		} forEach _drinkItems; 

	//Allow player to slurp slurp
	if(_vehicle == player and _hasDrink) then {
    	if((dayz_thirst >= 180) and (dayz_thirst2 < 0)) then {
        	dayz_thirst2 = player addAction [format["Drink%1"], "\z\addons\dayz_code\actions\player_drink2.sqf",[], 1, false, true, "", "player == player"];
    	};
	} else {
    	player removeAction dayz_thirst2;
    	dayz_thirst2 = -1;
	};

	//Allow player to fill water bottles
	if(_isWater and _hasbottleitemE) then {
    	if((s_player_fillwater2 < 0)) then {
        	s_player_fillwater2 = player addAction [format["Fill Bottle%1"], "\z\addons\dayz_code\actions\water_fill.sqf",[], 1, false, true, "", "player == player"];
    	};
	} else {
    	player removeAction s_player_fillwater2;
    	s_player_fillwater2 = -1;
	};

	//Allow consuming of an MRE
	if(_vehicle == player and _hasMRE) then {
        if ((r_player_blood >= 10000) and (dayz_mre < 0)) then { 
		
		player removeAction dayz_mre;
		dayz_mre = -1;
		dayz_mre = player addAction [format["Use MRE%1"], "\z\addons\dayz_code\actions\player_mre.sqf",[], 1, false, true, "", "player == player"];
		
		}; if ((r_player_blood >= 10000) and (dayz_mre < 0)) then {
		player removeAction dayz_mre2;
		dayz_mre2 = -1;
		if((dayz_hunger >= 270) or (dayz_thirst >= 180)) then {
			dayz_mre2 = player addAction [format["Use MRE%1"], "\z\addons\dayz_code\actions\player_mre.sqf",[], 1, false, true, "", "player == player"];
		};
		};
	} else {
    	player removeAction dayz_mre;
    	dayz_mre = -1;
    	player removeAction dayz_mre2;
    	dayz_mre2 = -1;
	};
	
	//Allow placing of tents
	if(_vehicle == player and _hasTent) then {
		if(s_doTent < 0) then {
			s_doTent = player addAction [format["Pitch Tent%1"], "z\addons\dayz_code\actions\tent_pitch.sqf"];
		};
	} else	{
		player removeAction s_doTent;
		s_doTent = -1;
	};
	
	//Allow placing of tents
	if(_vehicle == player and _hasATent) then {
		if(s_doATent < 0) then {
			s_doATent = player addAction [format["Pitch Tent (Large)%1"], "z\addons\dayz_code\actions\atent_pitch.sqf"];
		};
	} else	{
		player removeAction s_doATent;
		s_doATent = -1;
	};
	
	_hasEpi = 		"ItemEpinephrine" in magazines player;
	//Allow epi adrenaline
	if(_vehicle == player and _hasEpi and (!r_player_adren)) then {
		if(s_player_adren < 0) then {
			s_player_adren = player addAction [format["Inject Epinephrine"], "z\addons\dayz_code\medical\adren.sqf",[_unit], 1, true, true, "", "'ItemEpinephrine' in magazines player"];
		};
	} else	{
		player removeAction s_player_adren;
		s_player_adren = -1;
	};
    
	//Custom Get in Back script
    if (!isNull cursorTarget and (player distance cursorTarget < 4) and !_inVehicle) then {
        _isAlive = alive cursorTarget;
        _isCustom = typeOf cursorTarget in ["Old_bike_TK_CIV_EP1","Old_bike_TK_INS_EP1","ATV_US_EP1","ATV_CZ_EP1","Tractor","VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Volha_1_TK_CIV_EP1","car_sedan","car_hatchback","Lada2_TK_CIV_EP1","Lada1_TK_CIV_EP1","Skoda","Lada1","Lada2","LadaLM","SkodaRed","SkodaGreen","SkodaBlue","datsun1_civil_3_open","datsun1_civil_1_open","hilux1_civil_3_open_EP1","hilux1_civil_1_open"];
        if (_isCustom and _isAlive and !r_player_onVehicleC and alive player) then {
            _seat = 0;
            _text = "";
            _text2 = "";
            _seatSide = "";
            _type = typeOf cursorTarget;
            if (_type in ["Tractor"]) then {
                _text = "Get on ";
                _text2 = " on top";
            };
            if (_type in ["ATV_US_EP1","ATV_CZ_EP1","Old_bike_TK_CIV_EP1","Old_bike_TK_INS_EP1"]) then {
                _text = "Get on ";
                _text2 = " on back";
            };
            if (_type in ["VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Volha_1_TK_CIV_EP1","car_sedan","car_hatchback"]) then {
                _text = "Get on ";
                _text2 = " on trunk";
            };
            if (_type in ["Lada2_TK_CIV_EP1","Lada1_TK_CIV_EP1","Skoda","Lada1","Lada2","LadaLM","SkodaRed","SkodaGreen","SkodaBlue"]) then {
                _text = "Get on ";
                _text2 = " on trunk";
            };
            if (_type in ["datsun1_civil_3_open","datsun1_civil_1_open","hilux1_civil_3_open_EP1","hilux1_civil_1_open"]) then {
                _text = "Get in ";
                _text2 = " in trunk";
            };
            _type = getText (configFile >> "CfgVehicles" >> _type >> "displayname");
            if (s_player_getin1 < 0) then {
                if (typeOf cursorTarget in ["Lada2_TK_CIV_EP1","Lada1_TK_CIV_EP1","Skoda","Lada1","Lada2","LadaLM","SkodaRed","SkodaGreen","SkodaBlue","VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Volha_1_TK_CIV_EP1","car_sedan","car_hatchback"]) then {
                    _seatSide = " (Left)";
                    s_player_getin1 = player addAction [format["%1%2%3%4",_text,_type,_text2,_seatSide], "\z\addons\dayz_code\actions\player_getin.sqf",0, 0, true, true, "", ""];	
                };
                if (typeOf cursorTarget in ["datsun1_civil_3_open","datsun1_civil_1_open","hilux1_civil_3_open_EP1","hilux1_civil_1_open"]) then {
                    _seatSide = " (Left)";
                    s_player_getin1 = player addAction [format["%1%2%3%4",_text,_type,_text2,_seatSide], "\z\addons\dayz_code\actions\player_getin.sqf",0, 0, true, true, "", ""];	
                };	
                if (typeOf cursorTarget in ["Tractor"]) then {
                    s_player_getin1 = player addAction [format["%1%2%3%4",_text,_type,_text2,_seatSide], "\z\addons\dayz_code\actions\player_getin.sqf",0, 0, true, true, "", ""];	
                };	
            };	
            if (s_player_getin2 < 0) then {
                _seatSide = "";
                if (typeOf cursorTarget in ["Lada2_TK_CIV_EP1","Lada1_TK_CIV_EP1","Skoda","Lada1","Lada2","LadaLM","SkodaRed","SkodaGreen","SkodaBlue","VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Volha_1_TK_CIV_EP1","car_sedan","car_hatchback"]) then {
                    _seatSide = " (Right)";
                    s_player_getin2 = player addAction [format["%1%2%3%4",_text,_type,_text2,_seatSide], "\z\addons\dayz_code\actions\player_getin.sqf",1, 0, true, true, "", ""];		
                };
                if (typeOf cursorTarget in ["datsun1_civil_3_open","datsun1_civil_1_open","hilux1_civil_3_open_EP1","hilux1_civil_1_open"]) then {
                    _seatSide = " (Center)";
                    s_player_getin2 = player addAction [format["%1%2%3%4",_text,_type,_text2,_seatSide], "\z\addons\dayz_code\actions\player_getin.sqf",1, 0, true, true, "", ""];		
                };
            };	
            if (s_player_getin3 < 0) then {
                _seatSide = "";
                if (typeOf cursorTarget in ["datsun1_civil_3_open","datsun1_civil_1_open","hilux1_civil_3_open_EP1","hilux1_civil_1_open"]) then {
                    _seatSide = " (Right)";
                    s_player_getin3 = player addAction [format["%1%2%3%4",_text,_type,_text2,_seatSide], "\z\addons\dayz_code\actions\player_getin.sqf",2, 0, true, true, "", ""];		
                };
            };	
        } else {
            player removeAction s_player_getin1;
            s_player_getin1 = -1;
            player removeAction s_player_getin2;
            s_player_getin2 = -1;
            player removeAction s_player_getin3;
            s_player_getin3 = -1;
        };
    } else {
        player removeAction s_player_getin1;
        s_player_getin1 = -1;
        player removeAction s_player_getin2;
        s_player_getin2 = -1;
        player removeAction s_player_getin3;
        s_player_getin3 = -1;
    };
    
//End of A3 Scroll functions


