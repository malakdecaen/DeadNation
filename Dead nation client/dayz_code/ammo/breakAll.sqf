
    #define Break_Display 2551
    #define Combine_Display 2552
    #define b1_list 2501
    #define b2_list 2502
    #define c1_list 2503
    #define c2_list 2504
    disableSerialization;
    
	fnc_inString = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_inString.sqf";
    _cbArray = ["5Rnd_762x51_M24","30Rnd_556x45_Stanag","6Rnd_45ACP","17Rnd_9x19_glock17","WoodenArrow","2Rnd_shotgun_74Slug","2Rnd_shotgun_74Pellets","15Rnd_9x19_M9SD","15Rnd_9x19_M9","9Rnd_45ACP_Mag","7Rnd_45ACP_1911","16Rnd_9x21_Mag","30Rnd_556x45_StanagSD"];
    _cbArray2 = ["20Rnd_762x51_DMR","20Rnd_762x51_FNFAL","7Rnd_45ACP_1911","200Rnd_556x45_M249","30Rnd_9x19_UZI","Quiver","8Rnd_B_Beneli_Pellets","8Rnd_B_Beneli_74Slug","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","64Rnd_9x19_SD_Bizon","16Rnd_9x21_Mag","17Rnd_9x19_glock17","9Rnd_45ACP_Mag","15Rnd_9x19_M9SD","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_StanagSD"];

    _createPile = {
        _mag = _this select 0;
        _amount = _this select 1;
        _input = _this select 2;
        _required = _this select 3;
        if (_amount <= 0) exitWith { cutText ["[SYSTEM] Not enough to break!","PLAIN DOWN"]; };
        if (player getVariable["combattimeout", 0] >= time) exitWith { cutText ["[SYSTEM] Wait until you are out of combat!","PLAIN DOWN"]; };
        
        
        player playActionNow "putDown";
        
        for "_x" from 1 to _required do {
            player removeMagazine _input;
            sleep 0.01;
        };
    	_nearBy = nearestObjects [getPosATL player, ["groundweaponHolder","groundweaponHolder"], 2];
        
        if (count _nearBy == 0) then {
    		_pile = createVehicle ["groundweaponHolder", getPosATL player, [], 0, "CAN_COLLIDE"];
            _pile addMagazineCargoGlobal [_mag,_amount];
            player reveal _pile;
        } else {
            _pile = _nearBy select 0;
            _pile addMagazineCargoGlobal [_mag,_amount];
            player reveal _pile;
        };
    };
    
    
	_animState = animationState player;
	_busy = ["putDown",_animState] call fnc_inString;
    
    _input = lbData [b1_list, (lbCurSel b1_list)];
    _output = lbData [b2_list, (lbCurSel b2_list)];
    if ((_input in _cbArray2) and (_output in _cbArray) and !(_busy)) then {
        switch (_output) do {
            case "30Rnd_556x45_Stanag":
            {
                _result = "30Rnd_556x45_Stanag";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 6;
                if (_input == "30Rnd_556x45_StanagSD") then {  _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))); };
                if (_input == "30Rnd_556x45_G36") then {  _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))); };
                if (_input == "30Rnd_556x45_G36SD") then {  _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))); };
                
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "5Rnd_762x51_M24":
            {
                _result = "5Rnd_762x51_M24";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 4;
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "6Rnd_45ACP":
            {
                _result = "6Rnd_45ACP";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                if (_input == "16Rnd_9x21_Mag") then {
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 3;
                };
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "17Rnd_9x19_glock17":
            {
                _result = "17Rnd_9x19_glock17";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 2;
                if (_input == "64Rnd_9x19_SD_Bizon") then {
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 4;
                };
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "15Rnd_9x19_M9":
            {
                _result = "15Rnd_9x19_M9";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 2;
                if (_input == "64Rnd_9x19_SD_Bizon") then {
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 4;
                };
                if (_input == "17Rnd_9x19_glock17") then {
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                };
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "9Rnd_45ACP_Mag":
            {
                _result = "9Rnd_45ACP_Mag";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 2;
                
                [_result, _amounst, _input, _required] call _createPile;
            };
            case "7Rnd_45ACP_1911":
            {
                _result = "7Rnd_45ACP_1911";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                if (_input == "16Rnd_9x21_Mag") then {
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 2;
                };
                
                [_result, _amounst, _input, _required] call _createPile;
            };
            case "15Rnd_9x19_M9SD":
            {
                _result = "15Rnd_9x19_M9SD";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 2;
                if (_input == "64Rnd_9x19_SD_Bizon") then {
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 4;
                };
                if (_input == "17Rnd_9x19_glock17") then {
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                };
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "30Rnd_556x45_G36SD":
            {
                _result = "30Rnd_556x45_G36SD";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "30Rnd_556x45_StanagSD":
            {
                _result = "30Rnd_556x45_StanagSD";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "30Rnd_556x45_G36":
            {
                _result = "30Rnd_556x45_G36";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "2Rnd_shotgun_74Pellets":
            {
                _result = "2Rnd_shotgun_74Pellets";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 4;
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "2Rnd_shotgun_74Slug":
            {
                _result = "2Rnd_shotgun_74Slug";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 4;
                
                [_result, _amount, _input, _required] call _createPile;
            };
            case "WoodenArrow":
            {
                _result = "WoodenArrow";
                _required = ({_x == _input} count ((vestItems player) + (backpackItems player)));
                _amount = ({_x == _input} count ((vestItems player) + (backpackItems player))) * 6;
                
                [_result, _amount, _input, _required] call _createPile;
            };
        };
    };