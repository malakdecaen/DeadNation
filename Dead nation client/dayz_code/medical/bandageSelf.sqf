// bleed.sqf
_unit = (_this select 3) select 0;

call fnc_usec_medic_removeActions;
r_action = false;

if (vehicle player == player) then {
	//not in a vehicle
	player playActionNow "Medic";
};

if (_unit == player) then {
	//Self Healing
	_id = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medBandaged.sqf";
} else {
	//dayzHumanity = [player,20];
	[player,1] call player_humanityChange;
};

	{
	_unit setVariable[_x,false,true];
	} forEach USEC_woundHit;
	_unit setVariable ["USEC_injured",false,true];

player removeMagazine "ItemBandage";

sleep 1;
//clear the healed player's vision
//["usecPainK",[_unit,player]] call broadcastRpcCallAll;
	usecPainK = [_unit,player];
	publicVariable "usecPainK";
