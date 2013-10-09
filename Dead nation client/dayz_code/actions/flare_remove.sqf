private["_flare"];
_flare = _this select 3;
deleteVehicle _flare;
player removeAction s_player_grabflare;
player removeAction s_player_removeflare;
s_player_grabflare = -1;
s_player_removeflare = -1;

player removeAction s_player_grabflare2;
player removeAction s_player_removeflare2;
s_player_grabflare2 = -1;
s_player_removeflare2 = -1;

player removeAction s_player_grabflare3;
player removeAction s_player_removeflare3;
s_player_grabflare3 = -1;
s_player_removeflare3 = -1;

player removeAction s_player_grabflare4;
player removeAction s_player_removeflare4;
s_player_grabflare4 = -1;
s_player_removeflare4 = -1;