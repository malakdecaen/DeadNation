private["_onLadder","_itemorignal","_hasfooditem","_rawfood","_cookedfood","_hasoutput","_config","_text","_regen","_dis","_sfx","_Cookedtime","_itemtodrop","_nearByPile","_item","_display"];
disableserialization;

_onLadder =     (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};

if (vehicle player != player) exitWith {cutText ["You may not eat while in a vehicle", "PLAIN DOWN"]};

_hasfooditem = "FoodMRE" in magazines player;

_config =   configFile >> "CfgMagazines" >> "FoodMRE";
_text =     getText (_config >> "displayName");

if (!_hasfooditem) exitWith {cutText [format[(localize "str_player_31"),_text,"consume"] , "PLAIN DOWN"]};

player playActionNow "Medic";
player removeMagazine "FoodMRE";
sleep 1;

_dis=6;
_sfx = "eat";
[player,_sfx,10,true,_dis] call dayz_zombieSpeak;
[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

r_player_blood = r_player_blood + 400;
if (r_player_blood > r_player_bloodTotal) then {
    r_player_blood = r_player_bloodTotal;
};

player setVariable ["messing",[dayz_hunger,dayz_thirst],true];
player setVariable["USEC_BloodQty",r_player_blood,true];
player setVariable["medForceUpdate",true];

//["dayzPlayerSave",[player,[],true]] call callRpcProcedure;
dayzPlayerSave = [player,[],true];
publicVariable "dayzPlayerSave";

dayz_lastMeal = time;
dayz_lastDrink = time;
dayz_hunger = 0;
dayz_thirst = 0;



//Ensure Control is visible
_display = uiNamespace getVariable 'DAYZ_GUI_display';
(_display displayCtrl 1301) ctrlShow true;

if (r_player_blood / r_player_bloodTotal >= 0.2) then {
    (_display displayCtrl 1300) ctrlShow true;
};
cutText [format[(localize  "str_player_consumed"),_text], "PLAIN DOWN"];

        player removeAction dayz_mre;
        dayz_mre = -1;
        player removeAction dayz_mre2;
    	dayz_mre2 = -1;
