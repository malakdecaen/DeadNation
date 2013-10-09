private["_flare"];
_flare = _this select 3;
_red = _flare in ["Chemlight_blue"];
_green = _flare in ["Chemlight_green"];
_yellow = _flare in ["Chemlight_yellow"];
_blue = _flare in ["Chemlight_blue"];
player playActionNow "PutDown";
sleep 2;
_flare attachTo [player,[0,0,0],"granat2"];
[_flare, -90, -10] call object_setpitchbank;
_flare setPos (getPos _flare);
_flare setVariable ["owner",player,true];
player removeAction s_player_grabflare;
player removeAction s_player_removeflare;
player removeAction s_player_grabflare2;
player removeAction s_player_removeflare2;
player removeAction s_player_grabflare3;
player removeAction s_player_removeflare3;
player removeAction s_player_grabflare4;
player removeAction s_player_removeflare4;
dayz_hasLight = true;

//Add Drop Action
if (_red) then { _text = "Red Chemlight"; };
if (_blue) then { _text = "Blue Chemlight"; };
if (_green) then { _text = "Green Chemlight"; };
if (_yellow) then { _text = "Yellow Chemlight"; };

while {(alive _flare) and dayz_hasLight} do {
	sleep 0.1;
};
if (dayz_hasLight) then {
	dayz_hasLight = false;
	player removeAction s_player_dropflare;
	player removeAction s_player_hideflare;
	player removeAction s_player_showflare;
	s_player_grabflare = -1;
	s_player_removeflare = -1;
	player removeAction s_player_dropflare2;
	s_player_grabflare2 = -1;
	s_player_removeflare2 = -1;
	player removeAction s_player_dropflare3;
	s_player_grabflare3 = -1;
	s_player_removeflare3 = -1;
	player removeAction s_player_dropflare4;
	s_player_grabflare4 = -1;
	s_player_removeflare4 = -1;
};
