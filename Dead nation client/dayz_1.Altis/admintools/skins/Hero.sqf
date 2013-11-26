private ["_worldspace"];

_worldspace = getPosASL player;

copyToClipboard _worldspace;

cutText [format["Location %1 copied to clipboard!",_worldspace],"PLAIN DOWN"];

hint "done";