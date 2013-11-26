/*

 DRAG BODY SCRIPT

 Allows players to drag unconscious bodies

 JULY 2010 - norrin
*****************************************************************************************************************************
Start drag.sqf
*/

private ["_unit","_dragee","_pos","_dir"];
_dragee                                = _this select 3;
_unit                                 = player;
if (isNull _dragee) exitWith {};
player removeAction s_player_moveBuild;
//player assumes dragging posture
_dragee setVariable ["NORRN_unit_dragged", true, true];
_unit playActionNow "grabDrag";
sleep 2;

//unconscious unit assumes dragging posture
//public EH
norrnRaDrag = _dragee;
publicVariable "norrnRaDrag";
_dragee switchmove "ainjppnemstpsnonwrfldb_still";
_dragee attachto [_unit,[0, 1, 0.1]];


//rotate wounded units so that it is facing the correct direction
norrnR180 = _dragee;
publicVariable "norrnR180";
_dragee setDir 180;
r_drag_sqf         = true;


NORRN_dropAction2 = player addAction ["Drop Object", "\z\addons\dayz_code\actions\drop2.sqf",_dragee, 0, false, true];

sleep 1;

if (true) exitWith {};