private["_unit"];
_unit = player;

if (_unit == player) then {                                
		dayzPlayerSave = [_unit,[],false];
		publicVariableServer "dayzPlayerSave";
		
		if (isServer) then {
			dayzPlayerSave call server_playerSync;
		};
};