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
		uniformclass = "";
		weapons[] = {};
		magazines[] = {};
		speaker = "NoVoice";
		sensitivity = 6;	// sensor sensitivity
		sensitivityEar = 4;
		identityTypes[] = {"Head_O1", "Head_O2", "Head_O3"};
		class TalkTopics {};
		languages[] = {};
        
		
		class Eventhandlers {
			init = "_this call zombie_initialize;";
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
				armor = 1.6;
				name = "body";
				memoryPoint = "aimPoint";
			};
			
			class HitSpine : HitHead {
				armor = 1.6;
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
	class z_villager3 : zZombie_Base {
	    _generalMacro = "C_man_w_worker_F";
		model = "\A3\characters_F\civil\c_poor";
		uniformClass = "U_C_Po2";
		displayName = "zombie villager3";
		hiddenSelections[] = {"camo1"};
		hiddenSelectionsTextures[] = {"A3\characters_f\civil\data\c_cloth1_v2_co.paa"};
		zombieLoot = "civilian";
		moves = "CfgMovesZombie"; 
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_O2"};
		linkedItems[] = {};
		respawnLinkedItems[] = {};
	};
	class z_villager2 : zZombie_Base {
		_generalMacro = "C_man_w_worker_F";
		model = "\A3\characters_F\common\coveralls";
		zombieLoot = "civilian";
		uniformClass = "U_C_Worke";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\A3\Characters_F\Common\Data\coveralls_bandit_co.paa"};
		displayName = "zombie villager2";
		moves = "CfgMovesZombie"; 
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_O2"};
		linkedItems[] = {};
		respawnLinkedItems[] = {};
		
		class HitPoints : HitPoints {
			class HitBody : HitBody {
				armor = 0.6*10;
			};
			
			class HitHands : HitHands {
				armor = 0.5*5;
			};
			
			class HitLegs : HitLegs {
				armor = 0.5*5;
			};
		};
	};
	class z_deadsurvivor : zZombie_Base {
		displayName = "Dead Survivor";
		model = "\A3\Characters_F\Civil\c_poloshirtpants.p3d";		
		hiddenSelections[] = {"Camo"};
		uniformClass = "U_C_Polo";
		hiddenSelectionsTextures[] = {"\charextras\textures\c_poloshirtpants_1_co.paa"};
		moves = "CfgMovesZombie2"; 
		zombieLoot = "civilian";
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_O2"};		
		weapons[] = {"Throw", "Put"};
		backpack = "B_AssaultPack_blkDN";
		respawnWeapons[] = {"Throw", "Put"};
		magazines[] = {"16Rnd_9x21_Mag", "Itembandage", "16Rnd_9x21_Mag"};
		respawnMagazines[] = {"16Rnd_9x21_Mag", "16Rnd_9x21_Mag", "Itembandage"};
		linkeditems[] = {"V_Rangemaster_belt", "Tan_Backwards_hat"};
		respawnlinkeditems[] = {"V_Rangemaster_belt", "Tan_Backwards_hat"};
		
		class Wounds {
			tex[] = {};
			mat[] = {"A3\Characters_F\Civil\Data\c_poloshirtpants.rvmat", "A3\Characters_F\Civil\Data\c_poloshirtpants_injury.rvmat", "A3\Characters_F\Civil\Data\c_poloshirtpants_injury.rvmat"};
		};
	};
	class z_villager1 : zZombie_Base {
		displayName = "Zombie Orestes";
		zombieLoot = "civilian";
		model = "\A3\characters_F\civil\c_orestes";
		uniformClass = "U_OrestesDN";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\charextras\textures\orestes_co.paa"};
		moves = "CfgMovesZombie2"; 
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_O2"};
		linkedItems[] = {};
		respawnLinkedItems[] = {};
		
		class Wounds {
			tex[] = {};
			mat[] = {"A3\Characters_F\Civil\Data\orestes.rvmat", "A3\Characters_F\Civil\Data\orestes_injury.rvmat", "A3\Characters_F\Civil\Data\orestes_injury.rvmat"};
		};
	};
	class z_policeman : zZombie_Base {
		displayName = "Zombie policeman";
		zombieLoot = "military";
		model = "\A3\characters_F\civil\c_hunter_f";
		uniformClass = "U_C_Hunter";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\charextras\textures\hunter_bushman_co.paa"};
		moves = "CfgMovesZombie2"; 
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_O1"};
		linkedItems[] = {"H_Booniehat_grn", "ItemWatch"};
		respawnLinkedItems[] = {"H_Booniehat_grn", "ItemWatch"};
	};
	
	
	class z_soldier : zZombie_Base {
		displayName = "Zombie Soldier";
		zombieLoot = "military";
		model = "\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		uniformClass = "U_C_Coverall_grey";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\charextras\textures\clothing1_co.paa"};
		moves = "CfgMovesZombie2"; 
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_OO"};
		linkeditems[] = {"V_Rangemaster_belt", "H_HelmetB_light"};
		respawnlinkeditems[] = {"V_Rangemaster_belt", "H_HelmetB_light"};
		
	};
	
	class z_soldier_pilot : zZombie_Base {
		displayName = "Zombie Soldier";
		zombieLoot = "military";
		model = "\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		uniformClass = "U_C_Coverall_grey";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\charextras\textures\clothing1_co.paa"};
		moves = "CfgMovesZombie"; 
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_O1"};
		linkeditems[] = {"V_Rangemaster_belt"};
		respawnlinkeditems[] = {"V_Rangemaster_belt"};
	};
	
	class z_soldier_heavy : zZombie_Base {
		displayName = "Zombie Soldier";
		zombieLoot = "military";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "U_C_Coverall_grey";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\charextras\textures\coveralls_urbancamo_co.paa"};
		moves = "CfgMovesZombie2"; 
		head = "MaleAfricanHead_01";
		identityTypes[] = {"Head_O2"};
		linkeditems[] = {"V_Rangemaster_belt"};
		respawnlinkeditems[] = {"V_Rangemaster_belt"};
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
	
    class C_Offroad_01_F;
	
	class DN_Offroad_01_F : C_Offroad_01_F {
		scope = 2;
		side = 3;
		crew = "";
		displayName = "Old Offroad";
		typicalCargo[] = {};
		
		class Library {
			libTextDesc = "$STR_A3_CfgVehicles_Offroad_Base_Library0";
		};
		model = "\A3\soft_f\Offroad_01\Offroad_01_unarmed_F";
		picture = "\A3\soft_f\Offroad_01\Data\UI\Offroad_01_base_CA.paa";
		Icon = "\A3\soft_f\Offroad_01\Data\UI\map_offroad_01_CA.paa";
		accuracy = 0.25;
		transportSoldier = 5;
		transportMaxBackpacks = 0;
		armor = 32;
		cost = 50000;
		weapons[] = {"SportCarHorn"};
		
		class TransportItems {
			class _xx_FirstAidKit {
				name = "FirstAidKit";
				count = 0;
			};
		};
		showNVGCargo[] = {0, 1};
		soundAttenuationCargo[] = {1, 0};
		hiddenSelections[] = {"camo", "camo2", "camo3"};
		hiddenSelectionsTextures[] = {"\dayz\textures\test1.paa", "\dayz\textures\test2.paa", "\dayz\textures\test3.paa"};
		
		class eventHandlers {
			init = "(_this select 0) execVM ""\dayz\textures\randomize.sqf""";
		};
		
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