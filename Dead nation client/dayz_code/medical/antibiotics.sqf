private["_hasMeds","_med","_effect"];
_med = "ItemAntibiotic";
_hasMeds = _med in magazines player;
if (vehicle player == player) then {
	//not in a vehicle
	player playActionNow "Medic";
};
if (_hasMeds) then {
	player removeMagazine _med;
};
//remove option
player removeAction s_player_antibioticA3;
s_player_antibioticA3 = -1;

//remove infection
r_player_infected = false;
player setVariable["USEC_infected",false,true];
