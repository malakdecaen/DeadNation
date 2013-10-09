private["_flare"];
_flare = _this select 3;
player removeAction s_player_showflare;
s_player_hideflare = player addAction [format["Hide Chemlight"], "\z\addons\dayz_code\actions\flare_hide.sqf",_flare, 1, false, true, "", ""];
[] spawn {
	player playAction "Gear";
    sleep 1;
    player playAction 'Stand';
    };
    detach _flare;
_flare attachTo [player,[0,0,0],"granat2"];