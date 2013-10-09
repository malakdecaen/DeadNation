// animHealed.sqf
_array = _this; //_this select 0;
_unit = _array select 0;
_medic = _array select 1;

if (_unit == player) then {
	r_player_inpain = false;
    if ((!r_player_tearGasOn) and (player distance (nearestObject [player,"SmokeShellTear"]) > 35) and (!r_player_tranq)) then {
	"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;
    };
    r_player_clear = true;
};

if (isServer) then {
	_unit setVariable["medForceUpdate",true];
};