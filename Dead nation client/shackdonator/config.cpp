#define _ARMA_
#include "keypad.hpp"
#include "defines2.hpp"
#include "defines.hpp"
#include "CfgSounds.hpp"


class CfgPatches {
	class Malak_car {
		units[] = {"Malak_car"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};
class CfgVehicleClasses {

	class Malak_bulding {
	
		displayName = "[Malak] bulding";
	};
};

class CfgFactionClasses {
	class Malak {
		displayName = "Malak";
		priority = 100;
		side = 3;
	};
};

class CfgVehicles {
	class House_F;	// External class reference
	class Thing;	// External class reference
	
	class garage_repart : House_F
	{
		scope = 2;
		vehicleClass = "Malak_bulding";
		faction = "Malak";
		animated = true;
		radiusView = 10;
		radius = 10;
		priority = 1;
		displayName = "Shack VIP";
		model = "\shackdonator\shackdonator.p3d";
        supplyRadius = 0.2;
		memoryPointSupply = "gear";
		armor = 10000;
		accuracy = 0.2;
		destrType = "DestructNo";
		transportMaxMagazines = 400;
		transportMaxWeapons = 10;
		transportMaxBackpacks = 5;
		
//DEFINE ANIMATIONS		
		class AnimationSources 
		{
			class LockedDoor_source {
				source = "user";
				initPhase = 0;
				animPeriod = 0.1;
			};
			class Door_1_source {
				source = "user";
				initPhase = 0;
				animPeriod = 1;
			};
			class door_1_rot	 
			{
				source = "user"; 
				animPeriod = 1;
				initPhase=0;
			};

		};	
		
//DEFINE ACTIONS		
		class UserActions
        {
			class OpenDoor_1 {
				displayName = "Enter Code";
				priority = 100;
				position = "Door_1_trigger";
				radius = 2;
				onlyForPlayer = 0;
				condition = "this animationPhase ""Door_1_rot"" < 0.1";
				statement ="defuseaction = this execVM ""\shackdonator\DefuseAction.sqf""";
			};
			
			class CloseDoor_1 : OpenDoor_1 {
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				displayName = $STR_DN_OUT_C_DOOR;
				priority = 9.75;
				condition = "((this animationPhase 'Door_1_rot') >= 0.5) && ((this getVariable ['bis_disabled_Door_1',0]) != 1)";
				statement = "([this, 'Door_1_rot'] execVM ""\A3\Structures_F\scripts\DoorNoHandle_close.sqf"")";
			};
			
			class OpenLockedDoor_1 : OpenDoor_1 {
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				condition = "((this animationPhase 'Door_1_rot') < 0.1) && ((this getVariable ['bis_disabled_Door_1',0]) == 1)";
				statement = "([this, 'Door_Locked_1_rot'] execVM ""\A3\Structures_F\scripts\LockedDoorNoHandle_open.sqf"")";
			};
		};
	};
};