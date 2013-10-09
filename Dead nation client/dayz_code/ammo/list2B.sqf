
    #define Break_Display 2551
    #define Combine_Display 2552
    #define b1_list 2501
    #define b2_list 2502
    #define c1_list 2503
    #define c2_list 2504
    disableSerialization;
    
    _dialog = findDisplay Break_Display;
    _playerListBox = _dialog displayCtrl b2_list;
    breakActive2 = false;
    lbClear _playerListBox;
    _cbArray = ["20Rnd_762x51_DMR","20Rnd_762x51_FNFAL","7Rnd_45ACP_1911","200Rnd_556x45_M249","30Rnd_9x19_UZI","Quiver","8Rnd_B_Beneli_Pellets","8Rnd_B_Beneli_74Slug","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","64Rnd_9x19_SD_Bizon","16Rnd_9x21_Mag","17Rnd_9x19_glock17","9Rnd_45ACP_Mag","15Rnd_9x19_M9SD","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_StanagSD"];
    breakActive2 = true;
    
while {breakActive2} do {
    
    _data = lbdata [b1_list, (lbCurSel b1_list)];
    if (_data in _cbArray) then {
        switch (_data) do {
            case "200Rnd_556x45_M249":
            {
                _result = "30Rnd_556x45_Stanag";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 6;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "20Rnd_762x51_DMR":
            {
                _result = "5Rnd_762x51_M24";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 4;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "20Rnd_762x51_FNFAL":
            {
                _result = "5Rnd_762x51_M24";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 4;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "7Rnd_45ACP_1911":
            {
                _result = "6Rnd_45ACP";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 1;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "30Rnd_9x19_UZI":
            {
                _result = "17Rnd_9x19_glock17";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "15Rnd_9x19_M9";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "15Rnd_9x19_M9SD";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "30Rnd_9x19_MP5":
            {
                _result = "17Rnd_9x19_glock17";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "15Rnd_9x19_M9";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "15Rnd_9x19_M9SD";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "64Rnd_9x19_SD_Bizon":
            {
                _result = "17Rnd_9x19_glock17";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 4;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "15Rnd_9x19_M9";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 5;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "15Rnd_9x19_M9SD";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 5;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "17Rnd_9x19_glock17":
            {
                _result = "15Rnd_9x19_M9";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "15Rnd_9x19_M9SD";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "9Rnd_45ACP_Mag":
            {
                _result = "7Rnd_45ACP_1911";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "6Rnd_45ACP";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "16Rnd_9x21_Mag":
            {
                _result = "7Rnd_45ACP_1911";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "6Rnd_45ACP";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
                
                
                _result = "9Rnd_45ACP_Mag";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 2;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "30Rnd_9x19_MP5SD":
            {
                _result = "30Rnd_9x19_MP5";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "30Rnd_556x45_G36":
            {
                _result = "30Rnd_556x45_Stanag";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "30Rnd_556x45_G36SD":
            {
                _result = "30Rnd_556x45_StanagSD";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "30Rnd_556x45_StanagSD":
            {
                _result = "30Rnd_556x45_Stanag";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "8Rnd_B_Beneli_Pellets":
            {
                _result = "2Rnd_shotgun_74Pellets";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 4;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "8Rnd_B_Beneli_74Slug":
            {
                _result = "2Rnd_shotgun_74Slug";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 4;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
            case "Quiver":
            {
                _result = "WoodenArrow";
                _amount = ({_x == _data} count ((vestItems player) + (backpackItems player))) * 6;
                _required = 1;
                
                if (_required <= ({_x == _data} count ((vestItems player) + (backpackItems player)))) then {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",_amount,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                } else {
                _name = getText(configFile >> "cfgMagazines" >> _result >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _result >> "picture");
                _ind = _playerListBox lbAdd format["[%1] %2",0,_name];
                _playerListBox lbSetData [_ind, _result];
                _playerListBox lbSetPicture [_ind, _pic]; 
                _playerListBox lbSetColor [_ind, [0.8,0.1,0.1,1]];
                };
            };
        };
    };
    sleep 0.5;
    lbClear _playerListBox;
};
    