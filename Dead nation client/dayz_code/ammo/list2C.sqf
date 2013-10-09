
    #define Break_Display 2551
    #define Combine_Display 2552
    #define b1_list 2501
    #define b2_list 2502
    #define c1_list 2503
    #define c2_list 2504
    disableSerialization;
    
    _dialog = findDisplay Combine_Display;
    _playerListBox = _dialog displayCtrl c2_list;
    combineActive2 = false;
    lbClear _playerListBox;
    _cbArray = ["5Rnd_762x51_M24","30Rnd_556x45_Stanag","6Rnd_45ACP","17Rnd_9x19_glock17","WoodenArrow","2Rnd_shotgun_74Slug","2Rnd_shotgun_74Pellets","15Rnd_9x19_M9SD","15Rnd_9x19_M9","9Rnd_45ACP_Mag","7Rnd_45ACP_1911"];
    combineActive2 = true;
    
while {combineActive2} do {
    _data = lbdata [c1_list, (lbCurSel c1_list)];
    if (_data in _cbArray) then {
        switch (_data) do {
            case "30Rnd_556x45_Stanag":
            {
                _result = "200Rnd_556x45_M249";
                _required = 6;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
            case "5Rnd_762x51_M24":
            {
                _result = "20Rnd_762x51_DMR";
                _required = 4;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                _result = "20Rnd_762x51_FNFAL";
                _required = 4;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
            case "6Rnd_45ACP":
            {
                _result = "7Rnd_45ACP_1911";
                _required = 1;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                _required = 1;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                _result = "30Rnd_9x19_UZI";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "30Rnd_9x19_MP5";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "64Rnd_9x19_SD_Bizon";
                _required = 4;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
            case "15Rnd_9x19_M9":
            {
                _result = "30Rnd_9x19_UZI";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "30Rnd_9x19_MP5";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "64Rnd_9x19_SD_Bizon";
                _required = 5;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "17Rnd_9x19_glock17";
                _required = 1;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                _required = 1;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
            case "15Rnd_9x19_M9SD":
            {
                _result = "30Rnd_9x19_UZI";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "30Rnd_9x19_MP5";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "64Rnd_9x19_SD_Bizon";
                _required = 5;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "17Rnd_9x19_glock17";
                _required = 1;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                _result = "16Rnd_9x21_Mag";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                _result = "9Rnd_45ACP_Mag";
                _required = 1;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
                
                
                _result = "16Rnd_9x21_Mag";
                _required = 2;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
            case "2Rnd_shotgun_74Pellets":
            {
                _result = "8Rnd_B_Beneli_Pellets";
                _required = 4;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
            case "2Rnd_shotgun_74Slug":
            {
                _result = "8Rnd_B_Beneli_74Slug";
                _required = 4;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
            case "WoodenArrow":
            {
                _result = "Quiver";
                _required = 6;
                _count = ({_x == _data} count ((vestItems player) + (backpackItems player)));
                _amount = 0;
                if ((_count % _required) == 0) then {
                    _amount = (_count / _required);
                } else {
                    _amount =  floor (_count / _required);
                };
                
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
    
    
    