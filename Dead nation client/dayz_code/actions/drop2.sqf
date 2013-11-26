/*
 DROP BODY SCRIPT

 Allows players to drop unconscious bodies

 JULY 2010 - norrin
*****************************************************************************************************************************
Start drop_body.sqf
*/

_dragee	= _this select 3; 

player removeAction NORRN_dropAction2;
NORRN_remove_drag = true;  
r_drag_sqf = false;
r_carry_sqf = false;
r_action = false;
_unit = player;

detach _unit;
detach _dragee;
_dragee modeltoworld [0,1,-0.1];
_unit switchMove "";
_dragee switchMove "";
NORRN_Dragged_body = objNull;
_dragee setVariable ["NORRN_unit_dragged", false, true]; 

//lie on back
_dragee playMoveNow "ainjppnemstpsnonwrfldnon";
norrnRalie = _dragee;
publicVariable "norrnRalie";
private ["_object","_location","_dir","_worldspace","_objectID","_objectUID","_classname","_codeinput","_convertInput","_i","_stringInput","_code","_fuel"];
_object = _this select 3; //get object
_location = getposATL _object; //get location of object
_dir = getDir _object; //get direction of object
_worldspace = [_dir,_location]; //generate worldspace like in db with direction and location
_objectID = _object getVariable["ObjectID","0"]; //get ObjectID
_objectUID = _object getVariable["ObjectUID","0"]; //get ObjectUID
_classname = 	getText (configFile >> "CfgMagazines" >> _object >> "ItemActions" >> "Build" >> "create");

	dayzDeleteObj = [_objectID,_objectUID]; //prepare global array to pass variables to the delete function
	publicVariableServer "dayzDeleteObj";
	if (isServer) then {
		dayzDeleteObj call server_deleteObj; //delete the object in the database to be able to recreate it
		};
	sleep 3; //wait some time to ensure everything is deleted
	_object setVariable ["characterID",dayz_characterID,true]; //set the playerUID again to be sure its set to the object
	dayzPublishObj = [dayz_characterID,_object,[_dir,_location],_classname]; //prepare global array to pass variables to the publish function
	publicVariableServer "dayzPublishObj";
	if (isServer) then {
		dayzPublishObj call server_publishObj; //recreate the database entry with the new code stored in the fuel field
	};
if (true) exitWith {};