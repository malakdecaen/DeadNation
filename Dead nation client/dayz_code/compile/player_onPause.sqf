private["_display","_btnRespawn","_btnAbort","_timeOut","_timeMax","_isDead"];
		disableSerialization;
		waitUntil {
			_display = findDisplay 49;
			!isNull _display;
		}; 
		_btnRespawn = _display displayCtrl 1010;
		_btnAbort = _display displayCtrl 104;
		_btnRespawn ctrlEnable true;
		_btnAbort ctrlEnable false;
		_timeOut = 0;
		_timeMax = 10;
		dayz_lastCheckBit = time;
        if (isNil "r_player_isDead") then { r_player_isDead = false; };
        if (isNil "r_fracture_legs") then { r_fracture_legs = false; };
		
		
		//force gear save
		if (time - dayz_lastCheckBit > 10) then {
			call player_gearSync;
		};			
				
		while {!isNull _display} do {
        
            if (r_player_isDead) then {
                _btnAbort ctrlEnable true;
                2 cutText ["", "PLAIN DOWN"];
                r_player_sendDead = ["emptyname"];
            } else {
                if (r_fracture_legs) then {
                    _btnAbort ctrlEnable true;
                    _btnRespawn ctrlEnable true;
                    2 cutText ["", "PLAIN DOWN"];
                } else {
                    switch true do {
                        case (_timeOut < _timeMax && ((count (player nearEntities ["zZombie_Base", 35]) > 0) or (count (player nearEntities ["AllVehicles", 10]) > 0))) : {
                            _btnAbort ctrlEnable false;
                            2 cutText [format ["You can abort in %1...", (_timeMax - _timeOut)], "PLAIN DOWN"];
                        };
                        case (player getVariable["combattimeout", 0] >= time) : {
                            _btnAbort ctrlEnable false;
                            2 cutText [format[localize "str_abort_playerincombat"], "PLAIN DOWN"];	
                        };
                        default {
                            _btnAbort ctrlEnable true;
                            2 cutText ["", "PLAIN DOWN"];				
                        };
                    };
                };
            };
			sleep 1;
			_timeOut = _timeOut + 1;
		};
		cutText ["", "PLAIN DOWN"];