private["_hasFood","_item","_text","_qty"];

playsound "z_fillwater_0";
player removeAction s_player_fillwater;
s_player_fillwater = -1;
player removeAction s_player_fillwater2;
s_player_fillwater2 = -1;

_qty = {_x == "ItemWaterbottleUnfilled"} count magazines player;

if ("ItemWaterbottleUnfilled" in magazines player) then {
	for "_x" from 1 to _qty do {
		player removeMagazine "ItemWaterbottleUnfilled";
		player addMagazine "ItemWaterbottle";
	};
	[player,"fillwater",10,true] call dayz_zombieSpeak;
	_id = [player,10,true,(getPosATL player)] spawn player_alertZombies;
	cutText [format[(localize  "str_player_01"),_qty], "PLAIN DOWN"];
} else {
	cutText [(localize "str_player_02") , "PLAIN DOWN"];
};