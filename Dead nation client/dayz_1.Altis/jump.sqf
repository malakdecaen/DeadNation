if (isNull player) exitwith {} ; //Script originally from Zooloo75/Stealthstick's now discontinued, Stratis-RP. Standalone version by: ProGamer

fn_Animation =
{
    _unit = _this select 0;
    _anim = _this select 1;
    _unit switchMove _anim;
};

dokeyDown={
     private ["_r"] ;
     _r = false ; 
   //  HINT STR (_this select 1);// show key number
   
     if ((_this select 1)  == 46 and speed player >8) then {
       if  (player == vehicle player  and player getvariable ["jump",true] and isTouchingGround player ) then  {
           
    player setvariable ["jump",false,true];

_vel = velocity player;
_dir = direction player;
_speed = 0.4;
player setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)+4];
 
 // player setvelocity [velocity player select 0,velocity player select 0,(velocity player select 2)+4];

    [[player,"AovrPercMrunSrasWrflDf"],"fn_Animation",nil,false] spawn BIS_fnc_MP; 
     player spawn {sleep 2;_this setvariable ["jump",true,true]};// disable jump for a time
    
   };
    _r=true;
      };
     _r;
} ;

waituntil {!(IsNull (findDisplay 46))};
(FindDisplay 46) DisplaySetEventHandler ["keydown","_this call dokeyDown"];  

