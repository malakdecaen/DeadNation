private ["_displayok","_lever"];
_lever = cursortarget;
keyCode = _lever getVariable ["Code","0"]; //changed to "Code" instead of "ObjectUID" to ensure that it gets the right value
_displayok = createdialog "KeypadGate";

