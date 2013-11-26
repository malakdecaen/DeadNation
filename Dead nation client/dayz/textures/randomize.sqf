/*
	File: randomize.sqf
	Author: pettka

	Description:
	Removes all proxies from the car, randomizes use of rear doors (according to _rnd2) and randomizes one of the skins (according to _rnd1)

	Parameter(s):
	None

	Returns:
	Nothing
*/

if (isServer) then {
	_rnd1 = floor random 6;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
	_this animate ["HidePolice", 1];
	_this animate ["HideServices", 1];
	_this animate ["HideBackpacks", 1];
	_this animate ["HideBumper1", 0];
	_this animate ["HideBumper2", 1];
	_this animate ["HideConstruction", 0];
	_rnd2 = floor random 3;
	if (_rnd2==0) then {_this animate ["HideDoor3", 1];};
};

waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

_this setObjectTexture [0, ["\dayz\textures\test1.paa","\dayz\textures\test2.paa","\dayz\textures\test3.paa"] call BIS_fnc_selectRandom];

_this setObjectTexture [1, ["\dayz\textures\test1.paa","\dayz\textures\test2.paa","\dayz\textures\test3.paa"] call BIS_fnc_selectRandom];