class CfgVehicles {
	class C_ManJeans1;	// External class reference
	class zZombie_Base : C_ManJeans1 {
		scope = public;
		glassesEnabled = 0;
		vehicleClass = "Zombie";
		displayName = "Zombie";
		fsmDanger = "";
		fsmFormation = "";
		zombieLoot = "civilian";
		moves = "CfgMovesZombie";
		isMan = false;
		weapons[] = {};
		magazines[] = {};
		sensitivity = 6;	// sensor sensitivity
		sensitivityEar = 4;
		identityTypes[] = {"Head_O2", "Head_O1", "Head_O3"};
		class TalkTopics {};
		languages[] = {};
		
		class Eventhandlers {
			init = "_this call zombie_initialize;this setDamage 0.49;";
			local = "if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM '\z\AddOns\dayz_code\system\zombie_agent.fsm'};";
		};
		
		class HitPoints {
			class HitHead {
				armor = 0.3;
				material = -1;
				name = "head_hit";
				passThrough = true;
				memoryPoint = "pilot";
			};
			
			class HitBody : HitHead {
				armor = 2;
				name = "body";
				memoryPoint = "aimPoint";
			};
			
			class HitSpine : HitHead {
				armor = 2;
				name = "Spine2";
				memoryPoint = "aimPoint";
			};
			
			class HitHands : HitHead {
				armor = 0.5;
				material = -1;
				name = "hands";
				passThrough = true;
			};
			
			class HitLArm : HitHands {
				name = "LeftArm";
				memoryPoint = "lelbow";
			};
			
			class HitRArm : HitHands {
				name = "RightArm";
				memoryPoint = "relbow";
			};
			
			class HitLForeArm : HitHands {
				name = "LeftForeArm";
				memoryPoint = "lwrist";
			};
			
			class HitRForeArm : HitHands {
				name = "RightForeArm";
				memoryPoint = "rwrist";
			};
			
			class HitLHand : HitHands {
				name = "LeftHand";
				memoryPoint = "LeftHandMiddle1";
			};
			
			class HitRHand : HitHands {
				name = "RightHand";
				memoryPoint = "RightHandMiddle1";
			};
			
			class HitLegs : HitHands {
				name = "legs";
				memoryPoint = "pelvis";
			};
			
			class HitLLeg : HitHands {
				name = "LeftLeg";
				memoryPoint = "lknee";
			};
			
			class HitLLegUp : HitHands {
				name = "LeftUpLeg";
				memoryPoint = "lfemur";
			};
			
			class HitRLeg : HitHands {
				name = "RightLeg";
				memoryPoint = "rknee";
			};
			
			class HitRLegUp : HitHands {
				name = "RightUpLeg";
				memoryPoint = "rfemur";
			};
		};
	};

    class B_Carryall_Base;	
	class B_AssaultPack_Base;
	class B_FieldPack_Base;
	class Bag_Base;
    class B_AssaultPack_blkDN : B_AssaultPack_Base {
		scope = 2;
		picture = "\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Compact_blk_ca.paa";
		displayName = "$STR_A3_B_AssaultPack_blk0";
		hiddenSelectionsTextures[] = {"\A3\weapons_f\ammoboxes\bags\data\backpack_compact_blk_co.paa"};
		transportMaxWeapons = 1;
		transportMaxMagazines = 10;
        mass = 40;
        maximumload = 100;
    };
	
	class B_FieldPack_blkDN : B_FieldPack_Base {
		scope = 2;
		displayName = "$STR_A3_B_FieldPack_blk0";
		hiddenSelectionsTextures[] = {"\A3\weapons_f\ammoboxes\bags\data\backpack_gorod_blk_co.paa"};
		transportMaxWeapons = 2;
		transportMaxMagazines = 16;
        mass = 50;
        maximumload = 100;
	};
	class B_Kitbag_BaseDN : Bag_Base {
		picture = "\A3\Weapons_F\ammoboxes\bags\data\ui\icon_B_C_Kitbag_rgr";
		model = "\A3\weapons_f\Ammoboxes\bags\Backpack_Fast";
		hiddenSelectionsTextures[] = {"\A3\weapons_f\ammoboxes\bags\data\backpack_fast_rgr_co.paa"};
		transportMaxWeapons = 3;
		transportMaxMagazines = 15;
        mass = 70;
        maximumload = 150;
	};	
	class B_Bergen_BaseDN : B_Kitbag_BaseDN {
		hiddenSelectionsTextures[] = {"\A3\weapons_f\ammoboxes\bags\data\backpack_small_co.paa"};
		transportMaxWeapons = 3;
		transportMaxMagazines = 15;
        mass = 70;
        maximumload = 150;
	};
	class B_Carryall_oucamoDN : B_Carryall_Base {
		scope = 2;
		displayName = "$STR_A3_B_Carryall_oucamo0";
		picture = "\A3\Weapons_F\Ammoboxes\Bags\data\UI\icon_B_C_Tortila_oucamo.paa";
		hiddenSelectionsTextures[] = {"\A3\weapons_f\ammoboxes\bags\data\backpack_tortila_oucamo_co.paa"};
		transportMaxWeapons = 3;
		transportMaxMagazines = 20;
        mass = 70;
        maximumload = 200;
	};

	class House {
		class DestructionEffects;
	};
	
	// This parent class is made to make referring to these objects easier later with allMissionObjects
	class SpawnableWreck : House {};

	class UH1Wreck_DZ: SpawnableWreck
	{
		model = "\A3\Air_F_Beta\Heli_Attack_02\Heli_Attack_02_wreck_F.p3d";
		icon = "\A3\Air_F_Beta\Heli_Attack_02\Data\UI\Map_Heli_Attack_02_CA.paa";
		mapSize = 15;
		displayName = "Crashed UH-1Y";
		vehicleClass = "Wrecks";
	};
	class UH60Wreck_DZ: SpawnableWreck
	{
		model = "\A3\Air_F_Beta\Heli_Attack_01\Heli_Attack_01_wreck_F.p3d";
		icon = "\A3\Air_F_Beta\Heli_Attack_01\Data\UI\Map_Heli_Attack_01_CA.paa";
		mapSize = 15;
		displayName = "UH-60 Wreck";
		vehicleClass = "Wrecks";
	};
	class Strategic;
	class NonStrategic;

	class groundweaponHolder;
	class WoodenArrowF : groundweaponHolder {
		scope = public;
		displayName = "WoodenArrowF";
		model = "\dayz_weapons\models\bolt";
		
		class eventHandlers {
			init = "[(_this select 0),'cfgMagazines','WoodenArrow'] execVM '\z\addons\dayz_code\init\object_pickupAction.sqf';";
		};
	};	
	class groundweaponHolder_ItemCrowbar: groundweaponHolder
	{
		scope=2;
		displayName="Crowbar";
		model="\dayz_equip\models\crowbar.p3d";
		class eventHandlers
		{
			init="[(_this select 0),'cfgWeapons','ItemCrowbar'] execVM '\z\addons\dayz_code\init\object_pickupAction.sqf';";
		};
	};
	class groundweaponHolder_ItemMachete: groundweaponHolder
	{
		scope=2;
		displayName="Machete";
		model="\z\addons\dayz_communityassets\models\machete.p3d";
		class eventHandlers
		{
			init="[(_this select 0),'cfgWeapons','ItemMachete'] execVM '\z\addons\dayz_code\init\object_pickupAction.sqf';";
		};
	};
};