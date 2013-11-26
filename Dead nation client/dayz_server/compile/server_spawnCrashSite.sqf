private ["_crashModel","_lootTable","_guaranteedLoot","_randomizedLoot","_frequency","_variance","_spawnChance","_spawnMarker","_spawnRadius","_spawnFire","_fadeFire","_timeAdjust","_timeToSpawn","_crashName","_position","_crash","_clutter","_config","_newHeight","_itemTypes","_index","_weights","_cntWeights","_itemType","_nearby","_nearBy"];

//_crashModel	= _this select 0;
//_lootTable	= _this select 1;
_guaranteedLoot = _this select 0;
_randomizedLoot = _this select 1;
_frequency	= _this select 2;
_variance	= _this select 3;
_spawnChance	= _this select 4;
_spawnMarker	= _this select 5;
_spawnRadius	= _this select 6;
_spawnFire	= _this select 7;
_fadeFire	= _this select 8;

diag_log("CRASHSPAWNER: Starting spawn logic for Crash Spawner");

while {(server_totalCrashes <= 18)} do {
	private["_timeAdjust","_timeToSpawn","_spawnRoll","_crash","_hasAdjustment","_newHeight","_adjustedPos"];
	// Allows the variance to act as +/- from the spawn frequency timer
	_timeAdjust = round(random(_variance * 2) - _variance);
	_timeToSpawn = time + _frequency + _timeAdjust;
	
	//Selecting random crash type
	_crashModel = ["Blackhawkwreck","Land_Wreck_Heli_Attack_01_F"] call BIS_fnc_selectRandom;

	_lootTable = "HeliCrash";
	
	_crashName	= getText (configFile >> "CfgVehicles" >> _crashModel >> "displayName");

	diag_log(format["CRASHSPAWNER: %1%2 chance to spawn '%3' with loot table '%4' at %5", round(_spawnChance * 100), '%', _crashName, _lootTable, _timeToSpawn]);

	// Apprehensive about using one giant long sleep here given server time variances over the life of the server daemon
	while {time < _timeToSpawn} do {
		sleep 10;
	};

	// Percentage roll
	if (random 1 <= _spawnChance) then {
		_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
		diag_log(format["CRASHSPAWNER: Spawning '%1' with loot table '%2' NOW! (%3) at: %4 - (%5)", _crashName, _lootTable, time, str(_position),mapGridPosition _position]);

		_crash = createVehicle [_crashModel,_position, [], 0, "CAN_COLLIDE"];
        server_totalCrashes = server_totalCrashes + 10;
		
  		//Grass clear system uncomment for clear areas around choppers.
		//_clutter = createVehicle ["ClutterCutter_EP1", _position, [], 0, "CAN_COLLIDE"];
		//_clutter setPos _position;
		
		// Randomize the direction the wreck is facing
		_crash setDir round(random 360);

		// Using "custom" wrecks (using the destruction model of a vehicle vs. a prepared wreck model) will result
		// in the model spawning halfway in the ground.  To combat this, an OPTIONAL configuration can be tied to
		// the CfgVehicles class you've created for the custom wreck to define how high above the ground it should
		// spawn.  This is optional.
		_config = configFile >> "CfgVehicles" >> _crashModel >> "heightAdjustment";
		_newHeight = 0;
		if ( isNumber(_config)) then {
			_newHeight = getNumber(_config);
		};

		// Must setPos after a setDir otherwise the wreck won't level itself with the terrain
		_crash setPos  [(_position select 0), (_position select 1), _newHeight];

		// I don't think this is needed (you can't get "in" a crash), but it was in the original deadnation Crash logic
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_crash];
		_crash setVariable ["ObjectID",1,true];

		if (_spawnFire) then {
			//["dayzFire",[_crash,2,time,false,_fadeFire]] call broadcastRpcCallAll;
			dayzFire = [_crash,2,time,false,_fadeFire];
			publicVariable "dayzFire";
			_crash setvariable ["fadeFire",_fadeFire,true];
		};
		//Start old mechanism
		//_itemTypes =	[] + getArray (configFile >> "CfgBuildingLoot" >> _lootTable >> "itemType");
		//_index = dayz_CBLBase  find _lootTable;
		//_weights =		dayz_CBLChances select _index;
		//_cntWeights = count _weights;
		//End old mechanism
		
		//Start NEW mechanism
	        _itemTypes = [["FN_FAL","weapon"], ["bizon_silenced_DZ","weapon"], ["M107_DZ","weapon"],["BAF_AS50_scoped","weapon"],["","casque"],["100Rnd_762x54_PK","magazine"],["M14_EP1_DZ","weapon"], ["FN_FAL_ANPVS4","weapon"], ["Mk_48_DZ","weapon"], ["M249_DZ","weapon"], ["BAF_L85A2_RIS_SUSAT","weapon"], ["DMR_DZ","weapon"], ["G36C","weapon"], ["G36C_camo","weapon"], ["G36_C_SD_camo","weapon"], ["G36A_camo","weapon"], ["G36K_camo","weapon"], ["", "military"], ["", "casque"], ["", "vest"], ["", "accessprim"], ["", "accessprim"], ["","uniformm"], ["M24_DZ","weapon"], ["M4A1_AIM_SD_camo","weapon"], ["Sa58P_EP1","weapon"], ["","lunette"], ["Sa58V_EP1","weapon"], ["Sa58V_RCO_EP1","weapon"], ["M4SPR","weapon"], ["","casque"]];
	        
	        _itemChance = [0.02, 0.05,0.02,0.01,0.5,0.01,0.05,0.02,0.03,0.05,0.01,0.06,0.03,0.02,0.01,0.02,0.02,1,0.5,0.02,0.1,0.1,0.08,0.05,0.08,0.08,0.03,0.04,0.02,0.03,0.01];
	        _weights = [];
	        _weights = [_itemType,_itemChance] call fnc_buildWeightedArray;
	        _cntWeights = count _weights;
	        _index = _weights call BIS_fnc_selectRandom;
	        //End NEW mechanism
		
		//This is the old randomider. Both will spawn #(_guaranteedLoot) loot stacks every time and a chance of spawning up to 7 stacks. The new one makes it so it can spawn up to 8.
		//for "_x" from 1 to (round(random _randomizedLoot) + _guaranteedLoot) do {
		for "_x" from 1 to (round(random 4) + 4) do {
			//create loot
			_index = floor(random _cntWeights);
			_index = _weights select _index;
			_itemType = _itemTypes select _index;
			[_itemType select 0, _itemType select 1, _position, (sizeOf _crashModel)/2] call spawn_loot;

			diag_log(format["CRASHSPAWNER: Loot spawn at '%1' with loot table '%2 - %3'", _crashName, str(_itemType)]); 

			// ReammoBox is preferred parent class here, as groundweaponHolder wouldn't match MedBox0 and other such items.
			_nearby = _position nearObjects ["ReammoBox_F", sizeOf(_crashModel)];
			{
				_x setVariable ["permaLoot",true];
			} forEach _nearBy;
		};

	} else {
		diag_log(format["CRASHSPAWNER: %1%2 chance to spawn '%3' with loot table '%4' at %5 FAILED (chance)", round(_spawnChance * 100), '%', _crashName, _lootTable, _timeToSpawn]);	
	};
};