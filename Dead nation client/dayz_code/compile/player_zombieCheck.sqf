
private ["_refObj",  "_listTalk",  "_pHeight",  "_attacked",  "_multiplier",  "_type",  "_dist",  "_chance",  "_last",  "_targets",  "_cantSee",  "_tPos",  "_zPos",  "_eyeDir",  "_inAngle",  "_lowBlood",  "_attackResult", "_near"];

_refObj = vehicle player;
_listTalk = (position _refObj) nearEntities ["zZombie_Base", 30];
_pHeight = (getPosATL _refObj) select 2;
_attacked = false; // at least 1 Z attacked the player
_near = false;
_multiplier = 1;

{
	_type = "zombie";
	if (alive _x) then {
		private["_dist"];
		_dist = (_x distance _refObj);
		_group = _x;
		_chance = 10 / dayz_monitorPeriod; // Z verbosity
		if ((_x distance player < dayz_areaAffect) and !(animationState _x == "ZombieFeed")) then {
			//perform an attack
			_last = _x getVariable["lastAttack", 0];
			if ((diag_tickTime - _last) > 2) then {
				_cantSee = [ _refObj,_x] call dayz_losCheck;
				if (!_cantSee) then {
					_attackResult = [_x,  _type] call player_zombieAttack;
				};
				//diag_log(format["%1 %2 %3 / as:%4 up:%5 ur:%6 sp:%7",  __FILE__,  _x,  _attackResult,  animationState player,  unitPos player,  unitReady _x,  [0, 0, 0] distance (velocity player)]);
				if ((!isNil "_attackResult") AND {(_attackResult == "")}) then {
					_x setVariable["lastAttack", diag_tickTime - random(1)];
					_attacked = true;
				}
 				else {
/*					_move = "amovpercmrunsnonwnondf";
					if (local _x) then {
						_x playMove _move;
					}
					else {
						[objNull,  _x,  rPlayMove,  _move] call RE;
					};

 					if(isNull group _x) then {
 						_x moveTo (getPosATL player);
 					} else {
 						_x domove (getPosATL player);
 					};
*/
//					doStop _x;
//					_x setVariable["doLoiter", false];
//					_x forceSpeed (if ([(getPosATL _x)] call fnc_isInsideBuilding) then {2} else {2});
 				};
			};
		} else {
			if (speed _x < 4) then {
				[_x,"idle",(_chance + 4),true] call dayz_zombieSpeak;
			} else {
				[_x,"chase",(_chance + 3),true] call dayz_zombieSpeak;
			};
		};

		//Noise Activation
		_targets = _group getVariable ["targets", []];
		if (!(_refObj in _targets)) then {
			if (_dist < DAYZ_disAudial) then {
				if (DAYZ_disAudial > 80) then { //65 Orignal: 80
					_targets set [count _targets,  driver _refObj];
					_group setVariable ["targets", _targets, true];
				} else {
					_chance = [_x, _dist, DAYZ_disAudial] call dayz_losChance;
					//diag_log ("Visual Detection: " + str([_x, _dist]) + " " + str(_chance));
					if ((random 1) < _chance) then {
						_cantSee = [ _refObj,_x] call dayz_losCheck;
						if (!_cantSee) then {
							_targets set [count _targets,  driver _refObj];
							_group setVariable ["targets", _targets, true];
						} else {
							if (_dist < (DAYZ_disAudial / 2)) then {
								_targets set [count _targets,  driver _refObj];
								_group setVariable ["targets", _targets, true];
							};
						};
					};
				};
			};
		};
		//Sight Activation
		_targets = _group getVariable ["targets", []];
		if (_dist < 100) then {
			if (!(_refObj in _targets)) then {
				if (_dist < (DAYZ_disVisual / 2)) then {
					_chance = [_x, _dist, DAYZ_disVisual] call dayz_losChance;
					//diag_log ("Visual Detection: m" + str([_x, _dist]) + " " + str(_chance));
					if ((random 1) < _chance) then {
						//diag_log ("Chance Detection");
						_tPos = (getPosASL _refObj);
						_zPos = (getPosASL _x);
						//_eyeDir = _x call dayz_eyeDir;
						_eyeDir = direction _x;
						_inAngle = [_zPos, _eyeDir, 30, _tPos] call fnc_inAngleSector;
						if (_inAngle) then {
							//LOS check
							_cantSee = [ _refObj, _x] call dayz_losCheck;
							//diag_log ("LOS Check: " + str(_cantSee));
							if (!_cantSee) then {
								//diag_log ("Within LOS! Target");
								_targets set [count _targets,  driver _refObj];
								_group setVariable ["targets", _targets, true];
							};
						};
					};
				};
			};
		};
	};
} forEach _listTalk;



if (_attacked) then {
	if (r_player_unconscious) then {
		[_refObj, "scream", 6, false] call dayz_zombieSpeak;
	} else {
		_lowBlood = (r_player_blood / r_player_bloodTotal) < 0.5;
		if (_lowBlood) then {
			dayz_panicCooldown = time;
			[_refObj, "panic", 6, false] call dayz_zombieSpeak;
		};
	};
};

// return true if attacked or near. if so,  player_monitor will perform its ridiculous 'while true' loop faster.
(_attacked OR _near)
