	_victim = _this select 0;
    _isTranq = _victim getVariable ["isTranq",false];
    
	if (_isTranq) exitWith { };
	if (!(isnull _victim) and (alive _victim) and (vehicle _victim == _victim)) then 
    { 
		if (animationState _victim in ["amovppnemrunsnonwnondf","amovppnemstpsnonwnondnon","amovppnemstpsraswrfldnon","amovppnemsprslowwrfldf","aidlppnemstpsnonwnondnon0s","aidlppnemstpsnonwnondnon01"]) then {
            _victim switchMove "adthppnemstpsraswpstdnon_2";
            dayzSwitchMove = [_victim,"adthppnemstpsraswpstdnon_2"];
            publicVariable "dayzSwitchMove";
		} else {
            _fallMove = ["adthpercmstpslowwrfldnon_4","AdthPercMstpSlowWrf_beating"] call BIS_fnc_selectRandom;
            _victim switchMove _fallMove;
            dayzSwitchMove = [_victim,_fallMove];
            publicVariable "dayzSwitchMove";
		};
		
		[_victim] call unit_dropWeapon;
		
		if (_victim == player) then {
			[] spawn {
                r_player_tranq = true;
                disableUserInput true;
                player switchCamera "INTERNAL";
                "dynamicBlur" ppEffectEnable true;
                "dynamicBlur" ppEffectAdjust [15];
                "dynamicBlur" ppEffectCommit 5;
                sleep 5;
                "dynamicBlur" ppEffectEnable true;
                "dynamicBlur" ppEffectAdjust [10];
                "dynamicBlur" ppEffectCommit 10;
                sleep 10;
                "dynamicBlur" ppEffectEnable true;
                "dynamicBlur" ppEffectAdjust [5];
                "dynamicBlur" ppEffectCommit 5;
                sleep 5;
                "dynamicBlur" ppEffectEnable true;
                "dynamicBlur" ppEffectAdjust [0];
                "dynamicBlur" ppEffectCommit 5;
                disableUserInput false;
                r_player_tranq = false;
			};
		};
		_victim setVariable ["isTranq",true,true];
		sleep 20;
		_victim setVariable ["isTranq",false,true];
		
        _victim switchMove "amovppnemrunsnonwnondf";
        dayzSwitchMove = [_victim,"amovppnemrunsnonwnondf"];
        publicVariable "dayzSwitchMove";
	
	};