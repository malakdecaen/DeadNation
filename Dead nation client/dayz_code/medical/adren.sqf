_unit = (_this select 3) select 0;

if (vehicle player == player) then {
	player playActionNow "Medic";
};
r_interrupt = false;
_animState = animationState player;
r_doLoop = true;
_started = false;
_finished = false;
while {r_doLoop} do {
	_animState = animationState player;
	_isMedic = ["medic",_animState] call fnc_inString;
	if (_isMedic) then {
		_started = true;
	};
	if (_started and !_isMedic) then {
		r_doLoop = false;
		_finished = true;
	};
	if (r_interrupt) then {
		r_doLoop = false;
	};
	sleep 0.1;
};
r_doLoop = false;

if (_finished) then {
	player removeMagazine "ItemEpinephrine";

    [] spawn {
        hint parseText format["<t size='1.20' font='Bitstream' color='#F2F24E'>[Medic]</t><br/><t size='1' font='Bitstream'>Your blood is filled with adrenaline. You have 3 minutes.</t><br/>"];
        r_player_adren = true;
        rushCounter = 0;
        while { r_player_adren } do {
            if (rushCounter > 90) exitWith {
                r_player_adren = false;
                player enableFatigue true;
                player setFatigue 0; 
            };
            player enableFatigue false;
            rushCounter = rushCounter + 1;
            playSound 'heartbeat_1';
    if ((!r_player_tearGasOn) and (player distance (nearestObject [player,"SmokeShellTear"]) > 35) and (!r_player_tranq)) then {
            addCamShake [2, 1, 25];
            0 fadeSound 2.5;
            'dynamicBlur' ppEffectEnable true; 'dynamicBlur' ppEffectAdjust [2]; 'dynamicBlur' ppEffectCommit 0.2;
            sleep 0.25;
            'dynamicBlur' ppEffectEnable true; 'dynamicBlur' ppEffectAdjust [1.5]; 'dynamicBlur' ppEffectCommit 0.18;
            sleep 0.25;
            playSound 'breath_1';
            'dynamicBlur' ppEffectEnable true; 'dynamicBlur' ppEffectAdjust [1]; 'dynamicBlur' ppEffectCommit 0.15;
            sleep 0.25;
            'dynamicBlur' ppEffectEnable true; 'dynamicBlur' ppEffectAdjust [0.5]; 'dynamicBlur' ppEffectCommit 0.12;
            sleep 0.25;
            'dynamicBlur' ppEffectEnable true; 'dynamicBlur' ppEffectAdjust [0]; 'dynamicBlur' ppEffectCommit 0.1;
            playSound 'breath_1';
            10 fadeSound 1;
            };
            sleep 1;
        };
        r_player_adren = false;
        r_player_clear = true;
    };
} else {
	r_interrupt = false;
	[[[player], { (_this select 0) switchMove ''; }], "BIS_fnc_spawn", true, false] call BIS_fnc_MP;
	player playActionNow "stop";
};