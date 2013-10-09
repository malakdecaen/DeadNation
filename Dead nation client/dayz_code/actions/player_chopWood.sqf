closeDialog 0;

if (["forest",dayz_surfaceType] call fnc_inString) then {

		_result = [player,"PartWoodPile"] call BIS_fnc_invAdd;
		[player,"chopwood",0,false] call dayz_zombieSpeak;
		if (_result) then {
        
            player playActionNow "Medic";
            sleep 3;
			cutText [localize "str_player_25", "PLAIN DOWN"];
		} else {
            if (loadVest player <= 0.93) then {
        
            player playActionNow "Medic";
            sleep 3;
            player addMagazine "PartWoodPile";
			cutText [localize "str_player_25", "PLAIN DOWN"];
            } else {
			cutText [localize "str_player_24", "PLAIN DOWN"];
            };
		};
		[player,20,false,(getPosATL player)] spawn player_alertZombies;
} else {
	cutText [localize "str_player_23", "PLAIN DOWN"];
};