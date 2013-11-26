//; ****************************************************************
//; Script file for ArmA 2
//; Created by: Tankbuster
//; ****************************************************************
// to be called by radio so that player can find exact coordinates from within the game.
hint "showloc";
 
t_pos = getPos player;
 
t_pos_x_eastwest = (t_pos select 0);
 
t_pos_y_northsouth = (t_pos select 1);
 
t_pos_z_altitude = (t_pos select 2);
 
hint format ["East/west = %1 , North/south = %2 , altitude = %3", t_pos_x_eastwest, t_pos_y_northsouth, t_pos_z_altitude];
 
copyToClipboard format ["East/west = %1, north/south = %2, altitude = %3", t_pos_x_eastwest, t_pos_y_northsouth, t_pos_z_altitude];
if [true] then exitWith [];