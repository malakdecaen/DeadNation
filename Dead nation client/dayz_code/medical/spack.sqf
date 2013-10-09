// bleed.sqf
_unit = (_this select 3) select 0;
if (_unit != player) then {
_isDead = _unit getVariable["USEC_isDead",false];
};
_unit setVariable ["hit_legs",0];
_unit setVariable ["hit_hands",0];
_unit setVariable ["USEC_inPain", false, true];

call fnc_usec_medic_removeActions;
r_action = false;

if (vehicle player == player) then {
	//not in a vehicle
	player playActionNow "Medic";
    hint parseText format["<t size='1.20' font='Bitstream' color='#F2F24E'>[Medic]</t><br/>
        <t size='1' font='Bitstream' align='left'>Don't move! Two stages must be administered.</t><br/>"];
};
r_interrupt = false;
_animState = animationState player;
r_doLoop = true;
r_currentanim = 1;
_started = false;
_started2 = false;
_finished = false;
while {r_doLoop} do {
	_animState = animationState player;
	_isMedic = ["medic",_animState] call fnc_inString;
	if (_isMedic) then {
        if (r_currentanim == 1) then {
            _started = true;
        };
        if (r_currentanim == 2) then {
            _started2 = true;
        };
	};
	if (_started and !_isMedic) then {
    hint parseText format["<t size='1.20' font='Bitstream' color='#F2F24E'>[Medic]</t><br/>
        <t size='1' font='Bitstream' align='left'>Stage 1 administered.</t><br/>"];
        player playActionNow "Medic";
        r_currentanim = 2;
        _started = false;
	};
	if (_started2 and !_isMedic) then {
    hint parseText format["<t size='1.20' font='Bitstream' color='#F2F24E'>[Medic]</t><br/>
        <t size='1' font='Bitstream' align='left'>Stage 2 administered.</t><br/>"];
    r_currentanim = 1;
        _started2 = false;
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
	if (_unit == player) then {
		//Self Healing
		_id = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medMorphine.sqf";
	_id2 = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medPainkiller.sqf";
		_id3 = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medBandaged.sqf";
		dayz_sourceBleeding =	objNull;
r_player_infected = false;
player setVariable["USEC_infected",false,true];
	player setVariable["LastTransfusion",time,true];
	_unit setVariable["USEC_lowBlood",false,true];
	r_player_lowblood = 	false;	
	10 fadeSound 1;
    if ((!r_player_tearGasOn) and (player distance (nearestObject [player,"SmokeShellTear"]) > 35) and (!r_player_tranq)) then {
	"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;
	"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 1]];"colorCorrections" ppEffectCommit 5;
    };
    r_player_clear = true;
    [] spawn {
        cutText ["[Medic] Blood will slowly restore...", "PLAIN DOWN",10];
        r_isHealing = true;
        r_bloodRestored = 0;
        r_oldblood = r_player_blood;
        while { r_isHealing } do {
            if (r_player_blood < 12000) then {
                r_bloodRestored = r_bloodRestored + 100;
                r_player_blood = r_oldblood + r_bloodRestored;
            } else {
                r_player_blood = 12000;
                r_isHealing = false;
            };
            if (r_bloodRestored > 3000) then {
                r_isHealing = false;
                player setVariable["USEC_BloodQty",r_player_blood,true];
            };
            sleep 1;
        };
    };
	} else {
	_unit setVariable["LastTransfusion",time,true];
	_unit setVariable["USEC_lowBlood",false,true];
	usecTransfuse = [_unit,player];
	publicVariable "usecTransfuse";
    
if (!_isDead) then {
	_unit setVariable ["NORRN_unconscious", false, true];
	_unit setVariable ["USEC_isCardiac",false,true];
	usecEpi = [_unit,player,"ItemEpinephrine"];
	publicVariable "usecEpi";
};
		[player,350] call player_humanityChange;
	};

	player removeMagazine "SurvivalPack";

    
	usecMorphine = [_unit,player];
	publicVariable "usecMorphine";
	usecBandage = [_unit,player];
	publicVariable "usecBandage";
	{_unit setVariable[_x,false,true];} forEach USEC_woundHit;
	_unit setVariable ["USEC_injured",false,true];
	usecPainK = [_unit,player];
	publicVariable "usecPainK";
    
        [] spawn {
        player enableFatigue false;
        sleep 10;
        player enableFatigue true;
        };
} else {
	r_interrupt = false;
	[[[player], { (_this select 0) switchMove ''; }], "BIS_fnc_spawn", true, false] call BIS_fnc_MP;
	player playActionNow "stop";
};