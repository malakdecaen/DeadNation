private["_flare"];
_flare = _this select 3;
player removeAction s_player_hideflare;
s_player_showflare = player addAction [format["Expose Chemlight"], "\z\addons\dayz_code\actions\flare_show.sqf",_flare, 1, false, true, "", ""];
[] spawn {
	player playAction "Gear";
    sleep 1;
    player playAction 'Stand';
    };
    detach _flare;
_flare attachTo [player,[0,0,-9999],"granat2"];