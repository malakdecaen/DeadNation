_pos = [];
if (typeOf r_player_currentCar in ["Old_bike_TK_CIV_EP1","Old_bike_TK_INS_EP1"]) then
{
    _pos = r_player_currentCar modelToWorld [0.2,-0.6,-0.94];
};
if (typeOf r_player_currentCar in ["Tractor"]) then
{
    _pos = r_player_currentCar modelToWorld [0,-2,0.1];
};
if (typeOf r_player_currentCar in ["ATV_US_EP1","ATV_CZ_EP1"]) then
{
    _pos = r_player_currentCar modelToWorld [0,-1.2,-0.94];
};
if (typeOf r_player_currentCar in ["VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Volha_1_TK_CIV_EP1","car_sedan","car_hatchback"]) then
{
    _pos = r_player_currentCar modelToWorld [0,-3,-1.3];
};
if (typeOf r_player_currentCar in ["Lada2_TK_CIV_EP1","Lada1_TK_CIV_EP1","Skoda","Lada1","Lada2","LadaLM","SkodaRed","SkodaGreen","SkodaBlue"]) then
{
    _pos = r_player_currentCar modelToWorld [0,-2,-1.4];
};
if (typeOf r_player_currentCar in ["datsun1_civil_3_open","datsun1_civil_1_open","hilux1_civil_3_open_EP1","hilux1_civil_1_open"]) then
{
    _pos = r_player_currentCar modelToWorld [0,-2,-1.25];
};
detach player;
player switchCamera "EXTERNAL";
player setPosATL _pos;
[[[player,"AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_GetOutHigh"], { if (player != (_this select 0)) then {(_this select 0) switchMove (_this select 1);}; }], "BIS_fnc_spawn", true, false] call BIS_fnc_MP;
player switchMove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_GetOutHigh";
player setPosATL _pos;

r_player_currentCar = nil;
r_player_onVehicleC = false;
player removeAction s_player_getout;
s_player_getout = -1;