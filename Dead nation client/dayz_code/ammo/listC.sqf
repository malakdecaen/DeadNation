
    #define Break_Display 2551
    #define Combine_Display 2552
    #define b1_list 2501
    #define b2_list 2502
    #define c1_list 2503
    #define c2_list 2504
    disableSerialization;
    
	closeDialog 0;
    _start = createDialog "combineManagement";
    _dialog = findDisplay Combine_Display;
    _playerListBox = _dialog displayCtrl c1_list;
    _cbArray = ["5Rnd_762x51_M24","30Rnd_556x45_Stanag","6Rnd_45ACP","17Rnd_9x19_glock17","WoodenArrow","2Rnd_shotgun_74Slug","2Rnd_shotgun_74Pellets","15Rnd_9x19_M9SD","15Rnd_9x19_M9","9Rnd_45ACP_Mag","7Rnd_45ACP_1911"];
    combineActive = true;
    
while{combineActive} do
{
    _magArray = [];
    
    {
        _isOk = isClass (configFile >> "CfgMagazines" >> _x);
        if (_isOk) then {
            if (!(_x in _magArray) and (_x in _cbArray)) then {
                _magArray set[count _magArray,_x];
                _mag = _x;
                _name = getText(configFile >> "cfgMagazines" >> _x >> "displayName");
                _pic = getText(configFile >> "cfgMagazines" >> _x >> "picture");
                _index = _playerListBox lbAdd format["[%1] %2",({_x == _mag} count ((vestItems player) + (backpackItems player))),_name];
                _playerListBox lbSetData [_index, _x]; 
                _playerListBox lbSetPicture [_index, _pic]; 
                if (!(_x in _cbArray)) then {
                    _playerListBox lbSetColor [_index, [0.8,0.1,0.1,1]];
                };
            };
        };
    } forEach ((vestItems player) + (backpackItems player));
    
    sleep 0.5;
    lbClear _playerListBox;
};