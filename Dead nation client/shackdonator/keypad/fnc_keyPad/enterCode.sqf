private["_obj","_objectID","_objectUID"];
_obj		= _this;
keyCode	= _obj getVariable ["ObjectID","0"];
titletext [format ["code: %1", keyCode], "PLAIN DOWN"];
titleFadeOut 2;
sleep 2;
_displayok = createdialog "KeypadGate";
