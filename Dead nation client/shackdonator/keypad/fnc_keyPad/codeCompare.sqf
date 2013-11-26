private ["_isPanel","_validObject","_validObjectCode","_panelPos","_playerPos","_cnt","_gateAccess","_inVehicle","_soundSource","_panel","_convertInput","_code", "_inputCode", "_validMatch", "_stringinput","_numberinputr","_coder"];
_panel = cursortarget;
_gateAccess = false;
_playerPos = getpos player;
_panelPos = getpos _panel;
_cnt = 600;
_validMatch = false;
_validObjectCode = false;
keyCode = _panel getVariable ["Code","0"];
sleep 1;
_code = keyCode;
_inputCode = _this select 1;
_convertInput =+ _inputCode;
for "_i" from 0 to (count _convertInput - 1) do {_convertInput set [_i, (_convertInput select _i) + 48]};
_numberinput = parseNumber((tostring _convertInput));
// compare arrays to see if code matches
	if (typeOf(_panel) == "Infostand_2_EP1") then {
	_validMatch = [_code, _numberinput] call BIS_fnc_areEqual;
	} else {
	_validObjectCode = [_code, _numberinput] call BIS_fnc_areEqual;
	};

if (_validMatch) then {
	cutText ["### ACCESS GRANTED ###", "PLAIN DOWN"];

	playsound "codefound";
	keyValid = true;
	_gateAccess = true;
	sleep 1;
	hint "Door Open";
	_panel animate ["Door_1_rot", 1];
	while {_gateAccess} do 
	{
	_playerPos = getpos player;
	_panelPos = getpos _panel;
	//_inVehicle = (vehicle player != player);
		if (_playerPos distance _panelPos > 10) then {
		_gateAccess = false;
		keyValid = false;
		};
	};
	keyValid = false;
} else {

if (!_validObjectCode) then {
	playsound "wrongcode";
	cutText ["!!! ACCESS DENIED !!!", "PLAIN DOWN"];
    sleep 1;
	cutText ["Wrong code was entered", "PLAIN DOWN"];
	} else {
	cutText ["### ACCESS GRANTED ###", "PLAIN DOWN"];
	playsound "codefound";
	_gateAccess = true;
	hint "Door Open";
	_panel animate ["Door_1_rot", 1];
	sleep 10;
	_panel animate ["Door_1_rot", 0];
	hint "Door Closed";
	};
};

CODEINPUT = [];
