#define VSoft		0
#define VArmor		1
#define VAir		2

#define private		0
#define protected		1
#define public		2

#define ReadAndWrite		0
#define ReadAndCreate		1
#define ReadOnly		2
#define ReadOnlyVerified		3

#define EAST 0 // (Russian)

#include "basicdefines.hpp"

class CfgPatches {
	class dayz_code {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"dayz_equip","dayz_weapons"};
	};
	class DZ_DebriefingRemoved
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgMods
{
	class dayz
	{
		dir = "dayz";
		name = "Dead Nation";
		action = "http://www.deadnation.eu";
		version = "1.7.3";
		hiveVersion = 0.96; //0.93
	};
	class DZ_InitWorld
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"Altis"};
	};
};


class CfgMissions
{
	 class Cutscenes
	 {
	  class ChernarusIntro1
		  {
			directory = "z\addons\dayz_code\cfgworlds\intro.Stratis";
		  };
	 };
};

class CfgWorlds
{
        initWorld = "Altis";
        demoWorld = "Altis";
};

class CfgAddons
{
	vest = 1;
	class PreloadBanks
	{
	};
	class PreloadAddons
	{
		class dayz
		{
			list[] = {"dayz_code","dayz","dayz_equip","dayz_weapons","A3_Weapons_F"};
		};
	};
};

class CfgAISkill {
	aimingaccuracy[] = {0, 0, 1, 1};
	aimingshake[] = {0, 0, 1, 1};
	aimingspeed[] = {0, 0, 1, 1};
	commanding[] = {0, 0, 1, 1};
	courage[] = {0, 1, 1, 1};
	endurance[] = {0, 0, 1, 1};
	general[] = {0, 0, 1, 1};
	reloadspeed[] = {0, 0, 1, 1};
	spotdistance[] = {0, 0, 1, 0.6};
	spottime[] = {0, 0, 1, 1};
};

class CfgInGameUI
{
    class PeripheralVision
    {
        cueColor[] = {0,0,0,0};
    };
	
	
	class MPTable
	{
		color[] = {0,0,0,0}; //{0.7,0.7,0.7,1};
		colorTitleBg[] = {0,0,0,0}; //{0.1,0.15,0.15,1};
		colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.9};
		colorSelected[] = {0,0,0,0}; //{0.7,0.7,0.7,0.4};
		colorWest[] = {0,0,0,0}; //{0.7,0.95,0.7,1};
		colorEast[] = {0,0,0,0}; //{0.95,0.7,0.7,1};
		colorCiv[] = {0,0,0,0}; //{0.8,0.8,0.8,1};
		colorRes[] = {0,0,0,0}; //{0.7,0.7,0.95,1};
		font = "EtelkaNarrowMediumPro";
		size = "0"; //"( 21 / 408 )";
		class Columns
		{
			class Order
			{
				width = 0; //0.046;
				colorBg[] = {0,0,0,0}; //{0.1,0.27,0.1,0.8};
				doubleLine = 0;
			};
			class Player
			{
				width = 0; //0.25;
				colorBg[] = {0,0,0,0}; //{0.1,0.23,0.1,0.8};
				doubleLine = 0;
			};
			class KillsInfantry
			{
				width = 0; //0.11;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; 
			};
			class KillsSoft
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = "";
			};
			class KillsArmor
			{
				width = 0; //0.11;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; 
			};
			class KillsAir
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; 
			};
			class Killed
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; 
			};
			class KillsTotal
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.35,0.1,0.9};
				picture = "";
			};
		};
	};
};

class RscPictureGUI
{
	vest = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.38,0.63,0.26,0.75};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	style = "0x30 + 0x100";
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};


class RscStructuredText {
	class Attributes;
};
class RscStructuredTextGUI: RscStructuredText
{
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	class Attributes: Attributes
	{
		align = "center";
		valign = "middle";
	};
};
//#include "CfgWorlds.hpp"
#include "cfgMoves.hpp"
#include "rscTitles.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "CfgMagazines.hpp"
#include "cfgLoot.hpp"
#include "CfgMarkers.hpp"
#include "CfgAmmo.hpp"

class CfgSurvival {
	class Inventory {
		class Default {
		    uniform = "U_C_Poloshirt_Pants";
			vest = "v_bandollierb_khk";
			weapons[] = {"ItemFlashlight"};
			magazines[] = {"ItemBandage", "ItemBandage", "ItemSodaCoke", "ItemPainkiller", "FoodCanBakedBeans", "FoodCanBakedBeans", "ItemWaterbottle"};
			//weapons[] = {"ItemFlashlight"};
			//bagbagWeapon = "ItemFlashlight";
			//bagbag = "B_AssaultPack_Base";
			//bagbag = "";
		};
	};
	class Meat {
		class Default {
			yield = 2;
			rawfoodtype = "FoodmeatRaw";
		};
		class Cow: Default {
			yield = 6;
			rawfoodtype = "FoodbeefRaw";
		};
		class Cow01: Cow {};
		class Cow02: Cow {};
		class Cow03: Cow {};
		class Cow04: Cow {};
		class Goat: Default {
			yield = 4;
			rawfoodtype = "FoodmuttonRaw";
		};
		class Sheep: Default {
			yield = 4;
			rawfoodtype = "FoodmuttonRaw";
		};
		class WildBoar: Default {
			yield = 4;
			rawfoodtype = "FoodbaconRaw";
		};
		class Hen: Default {
			yield = 2;
			rawfoodtype = "FoodchickenRaw";
		};
		class Rabbit: Default {
			yield = 1;
			rawfoodtype = "FoodrabbitRaw";
		};
        class zZombie_base: Default {
            yield = 1;
            rawfoodtype = "FoodzombieRaw";
        };
        class player_base: Default {
            yield = 1;
            rawfoodtype = "FoodhumanRaw";
        };
	};
};

class CfgBuildingLoot {
	class Default {
		zombieChance = 0.2;
		minRoaming = 0;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootChance = 0;
		lootPos[] = {};
		itemType[] = {};
		itemChance[] = {};
		hangPos[] = {};
		vehPos[] = {};
	};
	class Master {
		weapons[] = {
			"SMAW",
			"Javelin",
			"arifle_TRG21_ARCO_pointer_F",
			"Stinger"
		};
	};
	class Residential: Default {
		zombieChance = 0.3;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootChance = 0.4;
		lootPos[] = {};
		itemType[] =	{
			{"ItemSodaMdew","magazine"},
			{"ItemWatch","vest"},
			{"ItemCompass","vest"},
			{"ItemMap","vest"},
			{"","casque"},
			{"hgun_P07_F","weapon"},
			{"","foodt"},
			{"","foodt"},
			{"ItemFlashlight","weapon"},
			{"Remington870","weapon"},
			{"ItemKnife","magazine"},
			{"hgun_Rook40_F","weapon"},
			{"Winchester1866","weapon"},
            {"hgun_ACPC2_F","weapon"},
            {"MeleeFlashlight","weaponNA"},
			{"B_Kitbag_BaseDN","backpack"},
			{"B_Bergen_BaseDN","backpack"}, 
			{"B_AssaultPack_blkDN","backpack"},
			{"B_AssaultPack_blkDN","backpack"}, 
			{"B_FieldPack_blkDN","backpack"},
            {"ItemKnife","magazine"},
            {"ItemMatchbox","magazine"},
			{"ItemTent","magazine"},
			{"","military"},
			{"","civilian"},
			{"","civilian"},
			{"Binocular","weapon"},
			{"PartWoodPile","magazine"},
			{"","unifo"},
			{"","unifo"},
			{"","lunette"},
			{"driller","magazine"},
			{"grinder","magazine"}
		};
		itemChance[] =	{
			0.01,
			0.05,
			0.03,
			0.03,
			0.13,
			0.13,
			0.05,
			0.05,
			0.05,
			0.03,
			0.50,
			0.02,
			0.08,
			0.06,
			0.02,
			0.13,
			0.05,
			0.03,
			0.08,
			0.06,
			0.06,
			0.04,
			0.01,
			0.01,
			0.03,
			0.5,
			0.01,
			0.06,
			0.06,
			0.01,
			0.01,
			0.08,
			0.03
		};		
	};
	class Office: Residential {
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
	};
	class Industrial: Default {
		zombieChance = 0.4;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		maxRoaming = 2;
		lootChance = 0.3;
		lootPos[] = {};
		itemType[] =	{
			{"","generic"},
			{"","trash"},
			{"","civilian"},
			{"PartGeneric","magazine"},
			{"PartWheel","magazine"},
			{"PartFueltank","magazine"},
			{"TrapBear","magazine"},
			{"PartEngine","magazine"},
			{"Remington870","weapon"},
			{"PartGlass","magazine"},
			{"PartVRotor","magazine"},
			{"ItemJerrycan","magazine"},
			{"MeleeHatchet","weapon"},
			{"Winchester1866","weapon"},
			{"ItemKnife","magazine"},
			{"ItemToolbox","magazine"},
			{"ItemWire","magazine"},
			{"ItemTankTrap","magazine"},
			{"","foodt"},
			{"","foodt"},
			{"metalpart","magazine"},
			{"woodpart","magazine"}
		};
		itemChance[] =	{
			0.18,
			0.29,
			0.04,
			0.04,
			0.04,
			0.09,
			0.04,
			0.05,
			0.05,
			0.02,
			0.05,
			0.02,
			0.04,
			0.01,
			0.04,
			0.11,
			0.07,
			0.06,
			0.01,
			0.04,
			0.02,
			0.09
		};
	};
	class Farm: Default {
		zombieChance = 0.3;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootChance = 0.5;
		lootPos[] = {};
		itemType[] =	{
			{"ItemJerrycan","magazine"},
			{"","generic"},
			{"Winchester1866","weapon"},
			{"hgun_P07_F","weapon"},
			{"Remington870","weapon"},
			{"","trash"},
			{"SMG_01_F","weapon"},
			{"PartWoodPile","magazine"},
			{"MeleeHatchet","weapon"},
			{"hgun_P07_F","weapon"},
			{"MeleeMachete","weapon"},
			{"","foodt"},
			{"","foodt"},
			{"ItemWatch","vest"},
			{"","foodt"},
			{"ItemMap","vest"},
			{"TrapBear","magazine"},
			{"hgun_Rook40_F","weapon"},
			{"Winchester1866","weapon"},
			{"ItemFlashlight","weaponNA"},
			{"","civilian"},
			{"","foodt"},
			{"ItemKnife","magazine"},
			{"ItemMatchbox","magazine"},
			{"","generic"},
			{"SMG_01_F","weapon"},
			{"hgun_Rook40_F","weapon"},
			{"SMG_01_F","weapon"},
			{"ItemTent","magazine"},
			{"B_Kitbag_BaseDN","backpack"},
			{"B_Bergen_BaseDN","backpack"}, // 18
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_FieldPack_blkDN","backpack"},
			{"","foodt"},
			{"","trash"},
			{"hgun_Rook40_F","weapon"},
			{"Binocular","weaponNA"},
			{"PartWoodPile","magazine"},
			{"nails","magazine"},
			{"Hammer","magazine"}
		};
		itemChance[] =	{
			0.06,
			0.28,
			0.01,
			0.04,
			0.03,
			0.04,
			0.03,
			0.22,
			0.9,
			0.03,
			0.11,
			0.17,
			0.06,
			0.03,
			0.01,
			0.15,
			0.01,
			0.05,
			0.05,
			0.05,
			0.02,
			0.02,
			0.05,
			0.02,
			0.05,
			0.05,
			0.01,
			0.05,
			0.02,
			0.02,
			0.05,
			0.01,
			0.01,
			0.01,
			0.01,
			0.3,
			0.15,
			0.01,
			0.05,
			0.02,
			0.01
		};
	};
	class Supermarket: Default {
		lootChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		itemType[] = {
			{"ItemWatch","vest"},
			{"","foodt"},
			{"ItemMap","vest"},
			{"hgun_Rook40_F","weapon"},
			{"hgun_P07_F","weapon"},
			{"ItemFlashlight","weaponNA"},
			{"","civilian"},
			{"","foodt"},
			{"ItemKnife","magazine"},
			{"Winchester1866","weapon"},
			{"ItemMatchbox","magazine"},
			{"","generic"},
			{"SMG_01_F","weapon"},
			{"hgun_Rook40_F","weapon"},
			{"SMG_01_F","weapon"},
			{"ItemTent","magazine"},
			{"B_Kitbag_BaseDN","backpack"},
			{"B_Bergen_BaseDN","backpack"}, // 18
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"MeleeMachete","weapon"},
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_FieldPack_blkDN","backpack"},
			{"","foodt"},
			{"","trash"},
			{"Remington870","weapon"},
			{"Binocular","weaponNA"},
			{"PartWoodPile","magazine"},
			{"arifle_Mk20C_F","weapon"}
		};
		itemChance[] =	{
			0.15,
			0.01,
			0.05,
			0.05,
			0.05,
			0.02,
			0.02,
			0.05,
			0.05,
			0.02,
			0.05,
			0.05,
			0.01,
			0.02,
			0.05,
			0.02,
			0.02,
			0.05,
			0.01,
			0.01,
			0.01,
			0.01,
			0.3,
			0.15,
			0.01,
			0.05,
			0.02,
			0.01
		};
	};
	class HeliCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		itemType[] =	{		
			{"","chest"},
			{"arifle_MXM_F","weapon"},
			{"SMG_02_F","weapon"},
			{"arifle_TRG21_GL_F","weapon"},
			{"srifle_LRR_F","weapon"},
			{"srifle_LRR_F","weapon"},
			{"srifle_GM6_F","weapon"},
			{"arifle_MX_SW_F","weapon"},
			{"arifle_SDAR_F","weapon"},
			{"B_Kitbag_BaseDN","backpack"},
			{"B_Bergen_BaseDN","backpack"}, // 18
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_FieldPack_blkDN","backpack"},
			{"SMG_01_F","weapon"},
			{"","military"},
			{"","accessprim"},
			{"","chest"},
			{"","lunette"},
			{"ItemRadio","weapon"},
			{"","unifo"},
			{"","unifo"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			{"","accessprim"}
		};
		itemChance[] =	{
			0.02,		//{"SMG_02_F","weapon"},
			0.02,		//{"arifle_TRG21_GL_F","weapon"},
			0.02,		//{"m107","weapon"},
			0.01,		//{"srifle_LRR_F","weapon"},
			0.03,		//{"srifle_GM6_F","weapon"},
			0.05,		//{"arifle_MX_SW_F","weapon"},
			0.01,		//{"arifle_SDAR_F","weapon"},
			0.06,
			0.06,
			0.01,		//{"srifle_LRR_F","weapon"},
			0.03,		//{"srifle_GM6_F","weapon"},
			0.05,		//{"arifle_MX_SW_F","weapon"},
			0.01,		//{"arifle_SDAR_F","weapon"},
			0.06,		//{"SMG_01_F","weapon"},
			1,			//{"","military"},
			0.5,		//{"","medical"},
			0.1,		//{"MedBox0","object"},
			0.02,		//{"NVGoggles","weapon"}
			0.1,	//AmmoBoxSmall_556
			0.1,	//AmmoBoxSmall_762
			0.08,	//Skin_Camo1_DZ
			0.05,	//Skin_Sniper1_DZ
			0.03,	//arifle_TRG21_ARCO_pointer_F"
			0.02,	//arifle_TRG21_ARCO_pointer_F
			0.02,	//arifle_TRG21_ARCO_pointer_F
			0.02,	//arifle_TRG21_ARCO_pointer_F
			0.01	//("100Rnd_762x54_PK","magazine"}
		};
	};
	class HeliCrash_No50s: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		itemType[] =	{		
			{"","accessprim"},
			{"arifle_MXM_F","weapon"},
			{"SMG_02_F","weapon"},
			{"arifle_TRG21_GL_F","weapon"},
			{"srifle_GM6_F","weapon"},
			{"arifle_MX_SW_F","weapon"},
			{"arifle_SDAR_F","weapon"},
			{"SMG_01_F","weapon"},
			{"","military"},
			{"","medical"},
			{"","chest"},
			{"","unifo"},
			{"","lunette"},
			{"","casque"},
			{"","accessprim"},
			{"","accessprim"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			//{"G36_C_SD_camo","weapon"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			{"","accessprim"},
			{"B_Kitbag_BaseDN","backpack"},
			{"B_Bergen_BaseDN","backpack"}, // 18
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_FieldPack_blkDN","backpack"},
			{"","casque"}
		};
		itemChance[] =	{
			0.02,		//{"FN_FAL","weapon"},
			0.05,
			0.05,		//{"SMG_02_F","weapon"},
			0.02,		//{"arifle_TRG21_GL_F","weapon"},
			0.03,		//{"srifle_GM6_F","weapon"},
			0.05,		//{"arifle_MX_SW_F","weapon"},
			0.06,
			0.05,		//{"SMG_02_F","weapon"},
			0.02,		//{"arifle_TRG21_GL_F","weapon"},
			0.03,		//{"srifle_GM6_F","weapon"},
			0.05,		//{"arifle_MX_SW_F","weapon"},
			0.01,		//{"arifle_SDAR_F","weapon"},
			0.06,		//{"SMG_01_F","weapon"},
			1,			//{"","military"},
			0.5,		//{"","medical"},
			0.1,		//{"MedBox0","object"},
			0.02,		//{"NVGoggles","weapon"}
			0.1,	//AmmoBoxSmall_556
			0.1,	//AmmoBoxSmall_762
			0.08,	//Skin_Camo1_DZ
			0.05,	//Skin_Sniper1_DZ
			0.03,	//arifle_TRG21_ARCO_pointer_F"
			0.02,	//arifle_TRG21_ARCO_pointer_F
			//0.01,	//G36_C_SD_camo
			0.02,	//arifle_TRG21_ARCO_pointer_F
			0.02,	//arifle_TRG21_ARCO_pointer_F
			0.01	//("100Rnd_762x54_PK","magazine"}
		};
	};
	class Hospital: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootChance = 1;
		lootPos[] = {};
		itemType[] =	{
			{"","trash"},
			{"MeleeHatchet","weapon"},
			{"","foodt"},
			{"","hospital"},
			{"MedBox0","object"}
		};
		itemChance[] =	{
			1,
			1,
			1,
			1,
			0.2
		};
	};
	class Military: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman"};
		lootChance = 0.4;
		lootPos[] = {};
		itemType[] =	{
			{"hgun_ACPC2_F","weapon"},
			{"","lunette"},
			{"arifle_MX_F","weapon"},
			{"hgun_ACPC2_F","weapon"},
			{"","chest"},
			{"LMG_Mk200_F","weapon"},
			{"arifle_TRG21_GL_F","weapon"},
			{"arifle_TRG21_GL_F","weapon"},
			{"LMG_Mk200_F","weapon"},
			{"SMG_01_F","weapon"},
			{"","casque"},
			{"SMG_01_F","weapon"},
			{"srifle_EBR_F","weapon"},
			{"SMG_02_F","weapon"},
			{"SMG_02_F","weapon"},
			{"","accessprim"},
			{"hgun_Rook40_F","weapon"},
			{"SMG_02_F","weapon"},
			{"SMG_02_F","weapon"},
			{"arifle_MXM_F","weapon"},
			{"Binocular","weaponNA"},
			{"ItemFlashlightRed","weapon"},
			{"ItemKnife","magazine"},
			{"","unifo"},
			{"ItemMap","vest"},
			{"B_Kitbag_BaseDN","backpack"}, // 16
			{"B_Bergen_BaseDN","backpack"}, // 16
			{"B_Bergen_BaseDN","backpack"}, // 18
			{"MeleeMachete","weapon"},
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_FieldPack_blkDN","backpack"},
			{"ItemRadio","weapon"},
			{"","medical"},
			{"","generic"},
			{"","military"},
			{"ItemEtool","magazine"},
			{"","foodt"},
			{"","foodt"},
			{"ItemSandbag","magazine"},
			{"arifle_Mk20C_F","weapon"},
			{"","chest"},
			{"","accessprim"}
		};
		itemChance[] =	{
			0.05,
			0.05,
			0.01,
			0.02,
			0.02,
			0.15,
			0.01,
			0.08,
			0.05,
			0.15,
			0.01,
			0.08,
			0.05,
			0.05,
			0.05,
			0.01,
			0.02,
			0.10,
			0.01,
			0.02,
			0.01,
			0.02,
			0.05,
			0.08,
			0.10,
			0.04,
			0.02,
			0.01,
			0.06,
			0.10,
			0.10,
			0.01,
			0.05,
			0.10, 
			1.00,
			2.50,
			0.20,
			0.05,
			0.05,
			0.02,
			0.03,
			0.03,
			0.01
		};
	};
	class MilitarySpecial: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier_heavy"};
		lootChance = 0.4;
		lootPos[] = {};
		itemType[] =	{
			{"arifle_MX_F","weapon"},
			{"arifle_MX_F","weapon"},
			{"arifle_MX_SW_F","weapon"},
			{"hgun_ACPC2_F","weapon"},
			{"LMG_Mk200_F","weapon"},
			{"LMG_Mk200_F","weapon"},
			{"arifle_TRG21_GL_F","weapon"},
			{"arifle_TRG21_GL_F","weapon"},
			{"LMG_Mk200_F","weapon"},
			{"SMG_01_F","weapon"},
			{"srifle_GM6_F","weapon"},
			{"","accessprim"},
			{"srifle_LRR_F","weapon"},
			{"ItemRadio","weapon"},
			{"SMG_01_F","weapon"},
			{"srifle_EBR_F","weapon"},
			{"SMG_02_F","weapon"},
			{"SMG_02_F","weapon"},
			{"","foodt"},
			{"","foodt"},
			{"","accessprim"},
			{"hgun_Rook40_F","weapon"},
			{"LMG_Zafir_F","weapon"},
			{"arifle_MXM_F","weapon"},
			{"arifle_TRG21_ARCO_pointer_F","weapon"},
			{"arifle_TRG21_GL_F","weapon"},
			{"srifle_GM6_F","weapon"},
			{"arifle_MXM_F","weapon"},
			{"","chest"},
			{"NVGoggles","vest"},
			{"Binocular","weaponNA"},
			{"ItemFlashlight","weapon"},
			{"ItemKnife","magazine"},
			{"ItemGPS","vest"},
			{"ItemMap","vest"},
			{"Binocular","weapon"},
			{"B_Kitbag_BaseDN","backpack"},
			{"B_Bergen_BaseDN","backpack"}, // 18
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"MeleeMachete","weapon"},
			{"B_AssaultPack_blkDN","backpack"}, // 24
			{"B_FieldPack_blkDN","backpack"},		
    		{"","medical"},
			{"","generic"},
			{"","military"},
			{"","foodt"},
			{"SMG_01_F","weapon"},
			{"TrapBear","magazine"},
			{"SMG_01_F","weapon"},
			{"LMG_Zafir_F","weapon"},
			{"","foodt"}
		};
		itemChance[] =	{
			0.10,
			0.05,
			0.01,
			0.02,
			0.10,
			0.09,
			0.02,
			0.10,
			0.10,
			0.10,
			0.10,
			0.01,
			0.01,
			0.20,
			0.01,
			0.02,
			0.10,
			0.05,
			0.03,
			0.20,
			0.10,
			0.20,
			0.01,
			0.04,
			0.05,
			0.02,
			0.01,
			0.08,
			0.04,
			0.02,
			0.10,
			0.05,
			0.15,
			0.01, //ItemGPS
			0.03,
			0.01,
			0.08, //16
			0.08, //16
			0.06, //18
			0.01, //24
			0.01, //DZ_Backpack_EP1 24
			0.30,
			1.00,
			0.01, //PipeBomb
			0.01, //SMG_01_F
			0.01, //SMG_01_F
			0.02, // LMG_Zafir_F
			0.01,
			0.05,
			0.02
		};
	};
	class Hunting: Default {
		zombieChance = 0.4;
		minRoaming = 1;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootChance = 1;
		lootPos[] = {};
		itemType[] =	{
			{"","casque"},
			{"","foodt"},
			{"","trash"},
			{"Remington870","weapon"},
			{"MeleeMachete","weapon"},
			{"Winchester1866","weapon"},
			{"TrapBear","magazine"},
			{"","generic"},
			{"","civilian"},
			{"","trash"}
		};
		itemChance[] =	{
			0.9,
			0.9,
			0.9,
			0.9,
			0.9,
			0.9,
			0.9,
			0.9,
			0.9,
			0.9,
			0.9
		};
	};		
		
		
	class Land_Dome_Small_F : Hospital {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};

		lootPos[] = {{-3.50696,-11.4194,-6.93302}, {-4.08813,11.397,-6.93302}};
	};
	class Land_Dome_Big_F : Hospital {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{2.03748,17.5259,-0.0436316}, {11.1429,-17.7856,-0.0436306}, {-3.76953,-9.05322,-0.0436306}};
	};
		
		class Land_Cargo_Tower_V3_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V2_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_No7_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_No6_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_No5_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_No4_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_No3_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_No2_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_No1_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_Cargo_Tower_V1_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.86121,3.37744,-0.120125}, {-2.448,-1.75488,-0.120123}, {-2.37878,-1.5,2.47988}, {2.92273,0.553711,5.00472}, {-4.5061,-1.19824,5.00472}};
	};
		
		class Land_u_Barracks_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-3.31958, -3.655151, 0.57448}, {-8.31958, -1.655151, 0.57448}, {7.31958, -1.655151, 0.57448}, {10.31958, -1.655151, 0.57448}, {-8.31958, 3.655151, 0.57448}, {7.31958, 3.655151, 0.57448}, {11.31958, 3.655151, 0.57448}, {-2.31958, -4.655151, 3.87448}, {-8.31958, -1.655151, 3.87448}, {7.31958, -1.655151, 3.87448}, {10.31958, -1.655151, 3.87448}, {-8.31958, 3.655151, 3.87448}, {7.31958, 3.655151, 3.87448}, {11.31958, 3.655151, 3.87448}};
	};
		
		class Land_Hospital_side2_F : Supermarket {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.42981,-5.14307,-8.10451}, {3.42981,-6.14307,-8.10451}};
	};
		
		class Land_Hospital_side1_F : Supermarket {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-3.97156,-2.4668,-7.89607}, {0.687988,-7.15527,7.46628}};
	};
		
		class Land_Hospital_main_F : Hospital {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{12.2517,-6.9834,-8.01412}, {-2.4635,-4.90332,0.162219}, {-4.97717,7.12988,0.159359}};
	};
		
		class Land_Offices_01_V1_F : MilitarySpecial {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{1.10852,-5.12354,-7.05899}, {-10.7615,-1.01611,0.871369}, {6.20081,-5.86816,0.7425}, {10.6145,-3.00391,4.66544}, {-9.48474,-5.76172,9.84601}, {-11.7089,5.25098,9.84601}};
	};
		
		class Land_Chapel_Small_V2_F : Farm {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{2.87976,0.53418,-0.867861}, {2.6958,-1.71533,-0.86786}};
	};
		
		class Land_Chapel_Small_V1_F : Farm {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{2.87976,0.53418,-0.867861}, {2.6958,-1.71533,-0.86786}};
	};
		
		class Land_Chapel_V2_F : Farm {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{10.4979,1.58496,-2.60849}, {5.45654,-3.48096,-2.80849}, {-3.37,-1.2998,-2.80848}};
	};
		
		class Land_Chapel_V1_F : Farm {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{10.4979,1.58496,-2.60849}, {5.45654,-3.48096,-2.80849}, {-3.37,-1.2998,-2.80848}};
	};
		
		class Land_i_Windmill01_F : Farm {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.34778,-0.283203,-2.2064}, {-2.4425,0.252441,0.784012}, {-1.99561,-0.413086,0.983203}};
	};
		
		class Land_d_Windmill01_F : Farm {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.34778,-0.283203,-2.2064}, {-2.4425,0.252441,0.784012}, {-1.99561,-0.413086,0.983203}};
	};
		
		class Land_TTowerBig_1_F : MilitarySpecial {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.45105,2.09082,2.80469}, {-0.600586,-2.05566,2.80469}, {0.742065,-1.80518,2.80469}};
	};
		
		class Land_spp_Tower_F : MilitarySpecial {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.213379,-2.42773,-14.962}, {-1.08875,-1.08301,10.1872}, {1.54175,0.00488281,23.8253}};
	};
		
		class Land_Factory_Main_F : Industrial {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{2.71899,-11.752,2.36833}, {8.09448,0.265625,0.336369}, {1.1825,6.93896,4.08879}};
	};
	
		class Land_dp_mainFactory_F : Industrial {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{21.4382,-6.51221,-0.00863218}, {1.42615,4.99902,-0.00863028}, {-2.70837,2.6333,-1.73733}, {-4.30798,-9.00146,3.61611}, {8.22644,-3.28906,-1.77733}, {-3.2168,-7.06152,-1.73733}};
	};
		
		class Land_CarService_F : Industrial {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{4.28577,2.87646,-1.25606}, {3.09338,-0.0390625,-1.25606}, {-2.24023,4.22705,-1.09606}};
	};
		
		class Land_Hangar_F : Hospital {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-0.840942,-6.14209,0.0370984}, {8.86926,-18.1763,0.0370984}, {-7.56494,-12.6748,0.0370984}};
	};
		
		class Land_Airport_center_F : Hospital {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-9.78308,3.10596,-2.71987}, {6.24268,-3.88037,-2.71987}, {-5.91748,3.31543,-0.0336308}};
	};
	
	    class Land_Airport_right_F : Supermarket {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-19.863,8.17871,-0.00863266}, {5.13025,-9.87598,-1.73733}, {6.47949,-6.28027,4.99137}, {11.6604,-12.6519,3.59394}};
	};
		
		class Land_Airport_left_F : Supermarket {
		lootChance = 0.9;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{21.4382,-6.51221,-0.00863218}, {1.42615,4.99902,-0.00863028}, {-2.70837,2.6333,-1.73733}, {-4.30798,-9.00146,3.61611}, {8.22644,-3.28906,-1.77733}, {-3.2168,-7.06152,-1.73733}};
	};
		
		class Land_Cargo_Patrol_V1_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -0.70448}, {0.82349, 0.769653, -0.70458}, {0.67871, 0.918701, -0.70458}, {0.31958, 0.655151, -0.70448}, {0.82349, 0.769653, -0.70458}, {0.67871, 0.918701, -0.70458}, {0.23242, 0.26794, -0.70458}};
	};
	
	class Land_Cargo_Patrol_V2_F : Military {
		lootChance = 10.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.5;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -0.70448}, {0.82349, 0.769653, -0.70458}, {0.67871, 0.918701, -0.70458}, {0.31958, 0.655151, -0.70448}, {0.82349, 0.769653, -0.70458}, {0.67871, 0.918701, -0.70458}, {0.23242, 0.26794, -0.70458}};
	};
	
	class Land_Cargo_Patrol_V3_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -0.70448}, {0.82349, 0.769653, -0.70458}, {0.67871, 0.918701, -0.70458}, {0.31958, 0.655151, -0.70448}, {0.82349, 0.769653, -0.70458}, {0.67871, 0.918701, -0.70458}, {0.23242, 0.26794, -0.70458}};
	};
	
	class Land_Research_house_V1_F : Hospital {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{1.31958, 0.655151, -0.10448}, {1.82349, 0.769653, -0.10458}, {1.67871, 0.918701, -0.10458}, {0.31958, 0.655151, -0.10448}, {0.82349, 0.769653, -0.10458}, {0.67871, 0.918701, -0.10458}, {0.23242, 0.26794, -0.10458}};
	};
	
	class Land_Cargo_House_V1_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{1.31958, 0.655151, -0.10448}, {1.82349, 0.769653, -0.10458}, {1.67871, 0.918701, -0.10458}, {0.31958, 0.655151, -0.10448}, {0.82349, 0.769653, -0.10458}, {0.67871, 0.918701, -0.10458}, {0.23242, 0.26794, -0.10458}};
	};
	
	class Land_Cargo_House_V2_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{1.31958, 0.655151, -0.10448}, {1.82349, 0.769653, -0.10458}, {1.67871, 0.918701, -0.10458}, {0.31958, 0.655151, -0.10448}, {0.82349, 0.769653, -0.10458}, {0.67871, 0.918701, -0.10458}, {0.23242, 0.26794, -0.10458}};
	};
	
	class Land_Cargo_House_V3_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{1.31958, 0.655151, -0.10448}, {1.82349, 0.769653, -0.10458}, {1.67871, 0.918701, -0.10458}, {0.31958, 0.655151, -0.10448}, {0.82349, 0.769653, -0.10458}, {0.67871, 0.918701, -0.10458}, {0.23242, 0.26794, -0.10458}};
	};
	
	class Land_Research_HQ_F : MilitarySpecial {
		lootChance = 1;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.9;
		zombieClass[] = {"z_soldier", "z_soldier_heavy"};
		lootPos[] = {{3.912129, 1.956779, -3.214625}, {2.852987,1.956779,-3.251202}, {0.67871, 0.918701, -0.77458}, {0.31958, 0.655151, -0.77448}, {0.82349, 0.769653, -0.77458}, {0.67871, 0.918701, -0.77458}, {0.23242, 0.26794, -0.77458}};
	};
	
	class Land_Cargo_HQ_V1_F : MilitarySpecial {
		lootChance = 1;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.9;
		zombieClass[] = {"z_soldier", "z_soldier_heavy","z_deadsurvivor"};
		lootPos[] = {{3.912129, 1.956779, -3.214625}, {2.852987,1.956779,-3.251202}, {0.67871, 0.918701, -0.77458}, {0.31958, 0.655151, -0.77448}, {0.82349, 0.769653, -0.77458}, {0.67871, 0.918701, -0.77458}, {0.23242, 0.26794, -0.77458}};
	};
	
	class Land_Cargo_HQ_V2_F : MilitarySpecial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy","z_deadsurvivor"};
		lootPos[] = {{3.912129, 1.956779, -3.214625}, {2.852987,1.956779,-3.251202}, {0.67871, 0.918701, -0.77458}, {0.31958, 0.655151, -0.77448}, {0.82349, 0.769653, -0.77458}, {0.67871, 0.918701, -0.77458}, {0.23242, 0.26794, -0.77458}};
	};
	
	class Land_Cargo_HQ_V3_F : MilitarySpecial {
		lootChance = 1;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.9;
		zombieClass[] = {"z_soldier", "z_soldier_heavy"};
		lootPos[] = {{3.912129, 1.956779, -3.214625}, {2.852987,1.956779,-3.251202}, {0.67871, 0.918701, -0.77458}, {0.31958, 0.655151, -0.77448}, {0.82349, 0.769653, -0.77458}, {0.67871, 0.918701, -0.77458}, {0.23242, 0.26794, -0.77458}};
	};
	
	class Land_FuelStation_Shed_F : Residential {
		lootChance = 0.4;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -2.60448}, {0.82349, 0.769653, -2.60458}, {0.67871, 0.918701, -2.60458}, {0.41958, 0.755151, -2.60448}, {0.72349, 0.759653, -2.60458}, {0.59871, 0.898701, -2.60458}, {0.22242, 0.27794, -2.60458}};
	};
	
	class Land_FuelStation_Build_F : Industrial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, 0.20000}, {0.82349, 0.769653, 0.20000}, {0.67871, 0.918701, 0.20000}, {0.41958, 0.755151, 0.20000}, {0.72349, 0.759653, 0.20000}, {0.59871, 0.898701, 0.20000}, {0.22242, 0.27794, 0.20000}};
	};
	
	class Land_cargo_addon01_V1_F : Office {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-1.31958, 0.655151, -0.57000}, {-1.82349, 0.769653, -0.57000}, {-1.67871, 0.918701, -0.57000}, {-1.41958, 0.755151, -0.57000}, {-1.72349, 0.759653, -0.57000}, {-1.59871, 0.898701, -0.57000}};
	};
	class Land_cargo_house_slum_F : Office {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-1.99646,-0.288086,-0.360254}, {-0.432861,-0.0947266,-0.360254}};
	};
	
	class Land_cargo_addon01_V2_F : Office {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman","z_deadsurvivor"};
		lootPos[] = {{-1.31958, 0.655151, -0.57000}, {-1.82349, 0.769653, -0.57000}, {-1.67871, 0.918701, -0.57000}, {-1.41958, 0.755151, -0.57000}, {-1.72349, 0.759653, -0.57000}, {-1.59871, 0.898701, -0.57000}};
	};
	
	class Land_cargo_addon02_V2_F : Office {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.31958, 0.655151, -1.17000}, {-2.82349, 0.769653, -1.17000}, {-2.67871, 0.918701, -1.17000}, {-2.41958, 0.755151, -1.17000}, {-2.72349, 0.759653, -1.17000}, {-2.59871, 0.898701, -1.17000}};
	};
	
	class Land_u_Addon_02_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.31958, 0.655151, 0.27000}, {-2.82349, 1.769653, 0.27000}, {-2.67871, 1.918701, 0.27000}};
	};
	
	class Land_Shed_Big_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-3.31958, 2.655151, -2.07448}, {-2.82349, 2.769653, -2.07458}, {-2.67871, 2.918701, -2.07458}, {-2.41958, 2.755151, -2.07448}, {-2.72349, 2.759653, -2.05458}, {-2.59871, 2.898701, -2.06458}};
	};
	
	class Land_Shed_Small_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, 2.655151, -2.07448}, {2.82349, 2.769653, -2.07458}, {2.67871, 2.918701, -2.07458}, {2.41958, 2.755151, -2.07448}, {2.72349, 2.759653, -2.05458}, {2.59871, 2.898701, -2.06458}, {2.22242, 2.27794, -1.56458}};
	};
	
	class Land_i_Garage_V1_F : Industrial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, 0.00000}, {0.82349, 0.769653, 0.20000}, {0.67871, 0.918701, 0.00000}, {0.41958, 0.755151, 0.00000}, {0.72349, 0.759653, 0.00000}, {0.59871, 0.898701, 0.00000}, {0.22242, 0.27794, 0.00000}};
	};
	
	class Land_Metal_Shed_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -1.07448}, {0.82349, 0.769653, -1.07458}, {0.67871, 0.918701, -1.07458}, {0.31958, 0.655151, -1.07448}, {0.82349, 0.769653, -1.07458}, {0.67871, 0.918701, -1.07458}, {0.23242, 0.26794, -1.07458}};
	};
	
	class Land_Airport_Tower_F : MilitarySpecial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy","z_deadsurvivor"};
		lootPos[] = {{-2.91958, -1.655151, -1.47448}, {1.82349, -1.769653, 2.27458}, {-1.41958, -3.855151, 2.27458}, {-0.91958, 4.655151, 1.77448}};
	};
	
	class Land_MilOffices_V1_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{0.31958, 7.655151, -2.87458}, {6.82349, 6.769653, -2.87458}, {7.67871, 7.918701, 2.87458}, {-6.31958, -2.655151, -2.87458}};
	};
	
	class Land_TentHangar_V1_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{3.31958, 2.655151, -3.90448}, {2.82349, 2.769653, -3.90458}, {2.67871, 6.918701, -3.90458}, {6.41958, 6.755151, -3.90448}};
	};
	
	class Land_dp_smallFactory_F : Office {
	    lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{9.76904, -3.26563, 1.1714226}, {9.42065, -1.13184, 1.1714226}, {9.81128, -0.15527, 1.1714221}, {9.00879, 2.53027, 1.1714226}};
	};
	
	class Land_dp_smallTank_F : Office {
	    lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.76904, 0.26563, 5.2714226}, {0.42065, -1.13184, 5.2714226}};
	};
	
	class Land_dp_bigTank_F : Office {
	    lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.76904, 0.26563, 3.5614226}, {0.42065, -1.13184, 3.5614226}};
	};
	
	class Land_Radar_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{5.91958, 10.655151, -5.87448}, {-9.02349, -10.769653, -5.90448}, {5.97871, -10.918701, -5.95448}};
	};
	
	class Land_Radar_Small_F : Military {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"z_soldier", "z_soldier_heavy", "z_policeman"};
		lootPos[] = {{0.31958, 0.655151, 0.57448}, {0.82349, 0.769653, 0.57458}, {0.67871, 0.918701, 0.57458}, {0.31958, 0.655151, 0.57448}, {0.82349, 0.769653, 0.57458}, {0.67871, 0.918701, 0.57458}, {0.23242, 0.26794, 0.57458}};
	};
	
	
	class Land_Lighthouse_small_F : Industrial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -3.20000}, {0.82349, 2.769653, -3.20000}, {2.67871, 0.918701, -3.20000}};
	};
	
	class Land_Lighthouse_F : Industrial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-0.31958, -2.655151, 8.27448}, {-0.82349, -2.769653, 8.27458}, {-1.67871, -2.918701, 8.27458}};
	};
	
	class Land_u_House_Small_01_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman","z_deadsurvivor"};
		lootPos[] = {{-2.31958, 0.655151, 0.27000}, {-2.82349, 1.769653, 0.27000}, {-2.67871, 1.918701, 0.27000}};
	};
	
	class Land_u_House_Small_02_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.31958, 0.655151, 0.27000}, {-2.82349, 1.769653, 0.27000}, {-2.67871, 1.918701, 0.27000}};
	};
	
	class Land_i_Barracks_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-3.31958, -3.655151, 0.57448}, {-8.31958, -1.655151, 0.57448}, {7.31958, -1.655151, 0.57448}, {10.31958, -1.655151, 0.57448}, {-8.31958, 3.655151, 0.57448}, {7.31958, 3.655151, 0.57448}, {11.31958, 3.655151, 0.57448}, {-2.31958, -4.655151, 3.87448}, {-8.31958, -1.655151, 3.87448}, {7.31958, -1.655151, 3.87448}, {10.31958, -1.655151, 3.87448}, {-8.31958, 3.655151, 3.87448}, {7.31958, 3.655151, 3.87448}, {11.31958, 3.655151, 3.87448}};
	};
	
	class Land_i_Barracks_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-3.31958, -3.655151, 0.57448}, {-8.31958, -1.655151, 0.57448}, {7.31958, -1.655151, 0.57448}, {10.31958, -1.655151, 0.57448}, {-8.31958, 3.655151, 0.57448}, {7.31958, 3.655151, 0.57448}, {11.31958, 3.655151, 0.57448}, {-2.31958, -4.655151, 3.87448}, {-8.31958, -1.655151, 3.87448}, {7.31958, -1.655151, 3.87448}, {10.31958, -1.655151, 3.87448}, {-8.31958, 3.655151, 3.87448}, {7.31958, 3.655151, 3.87448}, {11.31958, 3.655151, 3.87448}};
	};
	
	class Land_u_House_Big_01_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, -4.655151, 0.87448}, {-3.82349, 3.769653, 0.87458}, {-3.67871, -2.918701, 0.87458}, {3.31958, 4.655151, 0.87448}, {3.82349, 3.769653, -2.57458}};
	};
	
	class Land_i_House_Big_01_V3_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, -4.655151, 0.87448}, {-3.82349, 3.769653, 0.87458}, {-3.67871, -2.918701, 0.87458}, {3.31958, 4.655151, 0.87448}, {3.82349, 3.769653, -2.57458}};
	};
	
	class Land_i_House_Big_01_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, -4.655151, 0.87448}, {-3.82349, 3.769653, 0.87458}, {-3.67871, -2.918701, 0.87458}, {3.31958, 4.655151, 0.87448}, {3.82349, 3.769653, -2.57458}};
	};
	
	class Land_i_House_Big_01_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, -4.655151, 0.87448}, {-3.82349, 3.769653, 0.87458}, {-3.67871, -2.918701, 0.87458}, {3.31958, 4.655151, 0.87448}, {3.82349, 3.769653, -2.57458}};
	};
	
	class Land_i_House_Small_01_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman","z_deadsurvivor"};
		lootPos[] = {{-3.31958, -1.655151, -0.97000}, {-3.82349, 2.069653, -0.97000}, {3.07871, 3.518701, -0.97000}};
	};
	
	class Land_i_House_Small_02_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.31958, -1.655151, -0.77000}, {-2.82349, 2.069653, -0.77000}, {2.07871, 2.518701, -0.77000}};
	};
	
	class Land_i_House_Small_02_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.31958, -1.655151, -0.77000}, {-2.82349, 2.069653, -0.77000}, {2.07871, 2.518701, -0.77000}};
	};
	class Land_i_House_Small_02_V3_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-2.31958, -1.655151, -0.77000}, {-2.82349, 2.069653, -0.77000}, {2.07871, 2.518701, -0.77000}};
	};
	class Land_i_House_Small_03_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, 0.655151, -0.20000}, {-3.82349, 2.769653, -0.20000}, {2.67871, -2.918701, -0.20000}};
	};
	
	class Land_i_House_Big_02_V3_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, -4.655151, 0.87448}, {-3.82349, 3.769653, 0.87458}, {-3.67871, -2.918701, 0.87458}, {3.31958, 4.655151, 0.87448}, {3.82349, 3.769653, -2.57458}};
	};
	
	class Land_i_House_Big_02_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman","z_deadsurvivor"};
		lootPos[] = {{3.31958, -4.655151, 0.87448}, {-3.82349, 3.769653, 0.87458}, {-3.67871, -2.918701, 0.87458}, {3.31958, 4.655151, 0.87448}, {3.82349, 3.769653, -2.57458}};
	};
	
	class Land_i_House_Big_02_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.31958, -4.655151, 0.87448}, {-3.82349, 3.769653, 0.87458}, {-3.67871, -2.918701, 0.87458}, {3.31958, 4.655151, 0.87448}, {3.82349, 3.769653, -2.57458}};
	};
	
	class Land_i_Shop_02_V3_F : Farm {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.01958, -2.655151, 1.25448}, {-3.82349, -3.069653, 1.25458}, {-3.67871, -1.918701, 1.25458}, {-3.82349, 2.769653, -2.57458}};
	};
	
	class Land_i_Shop_02_V2_F : Farm {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.01958, -2.655151, 1.25448}, {-3.82349, -3.069653, 1.25458}, {-3.67871, -1.918701, 1.25458}, {-3.82349, 2.769653, -2.57458}};
	};
	
	class Land_i_Shop_02_V1_F : Farm {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.01958, -2.655151, 1.25448}, {-3.82349, -3.069653, 1.25458}, {-3.67871, -1.918701, 1.25458}, {-3.82349, 2.769653, -2.57458}};
	};
	
	class Land_i_Shop_01_V3_F : Farm {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{2.01958, -2.655151, 1.05448}, {-2.82349, -3.069653, 1.05458}, {-2.67871, -2.218701, 1.05458}, {-2.82349, 2.769653, -2.57458}};
	};
	
	class Land_i_Shop_01_V2_F : Farm {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{2.01958, -2.655151, 1.05448}, {-2.82349, -3.069653, 1.05458}, {-2.67871, -2.218701, 1.05458}, {-2.82349, 2.769653, -2.57458}};
	};
	
	class Land_i_Shop_01_V1_F : Farm {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman","z_deadsurvivor"};
		lootPos[] = {{2.01958, -2.655151, 1.05448}, {-2.82349, -3.069653, 1.05458}, {-2.67871, -2.218701, 1.05458}, {-2.82349, 2.769653, -2.57458}};
	};
	
	class Land_Chapel_Small_F : Residential {
		lootChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.93213, 0.0708, 0.20155}, {0.2959, 0.68213, 0.20155}, {0.41406, 0.39307, 0.20155}, {0.28809, 0.57861, 0.20155}, {0.903809, 0.35986, 0.20155}, {0.1377, 0.40771, 0.20155}, {7.53418, -2.69971, -1.20154}, {13.9653, -4.50342, -1.20155}, {10.2617, 0.109863, -1.20155}, {10.5869, -3.84375, -1.20155}, {7.84521, -0.137207, -1.20154}, {3.57471, 0.0356445, -1.20154}, {-0.370605, 5.17676, -1.20155}, {4.77783, 5.57617, -1.20155}, {13.0874, 4.35645, -1.20155}, {12.9932, 6.31689, -1.20155}, {7.36328, 3.00928, -1.20155}, {1.93091, 2.17236, -1.20154}, {-3.82715, 5.3335, -1.20155}, {-7.55029, 8.54199, -1.20154}, {-4.42407, 8.96631, -1.20154}, {3.72705, 8.36084, -1.20155}, {9.84033, 8.3374, -1.20155}, {-2.90918, 1.32031, -1.20155}};
	};
	
	
	class Land_Unfinished_Building_01_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.01958, -2.655151, 1.15448}, {-3.82349, -2.659653, 1.25458}, {-3.67871, 3.018701, 4.52458}};
	};
	class Land_Unfinished_Building_02_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.01958, -2.655151, 1.15448}, {-3.82349, -2.659653, 1.25458}, {-3.67871, 3.018701, 4.52458}};
	};
	
	class Land_Slum_House01_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -1.07448}, {0.82349, 0.769653, -1.07458}, {0.67871, 0.918701, -1.07458}, {0.31958, 0.655151, -1.07448}, {0.82349, 0.769653, -1.07458}};
	};
	
	class Land_Slum_House02_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -0.87448}, {0.82349, 0.769653, -0.87458}, {0.67871, 0.918701, -0.87458}, {0.31958, 0.655151, -0.87448}, {0.82349, 0.769653, -0.87458}};
	};
	
	class Land_Slum_House03_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{1.31958, 0.655151, -0.93448}, {1.82349, 0.769653, -0.93458}, {0.67871, 0.918701, -0.93458}, {0.31958, 0.655151, -0.93448}, {0.82349, 0.769653, -0.93458}};
	};
	
	class Land_i_Stone_HouseBig_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{1.01958, -0.655151, 1.15448}, {-1.82349, -0.069653, 1.15458}, {-0.67871, -0.218701, 1.15458}, {-1.82349, 1.769653, -1.00458}};
	};
	class Land_i_Stone_HouseBig_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{1.01958, -0.655151, 1.15448}, {-1.82349, -0.069653, 1.15458}, {-0.67871, -0.218701, 1.15458}, {-1.82349, 1.769653, -1.00458}};
	};
	class Land_i_Stone_HouseBig_V3_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{1.01958, -0.655151, 1.15448}, {-1.82349, -0.069653, 1.15458}, {-0.67871, -0.218701, 1.15458}, {-1.82349, 1.769653, -1.00458}};
	};
	
	class Land_i_Stone_HouseSmall_V1_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -0.57448}, {0.82349, 0.769653, -0.57458}, {0.67871, 0.918701, -0.57458}, {0.41958, 0.755151, -0.57448}, {0.72349, 0.759653, -0.55458}, {0.59871, 0.898701, -0.56458}, {0.22242, 0.27794, -0.56458}};
	};
	class Land_i_Stone_HouseSmall_V2_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -0.57448}, {0.82349, 0.769653, -0.57458}, {0.67871, 0.918701, -0.57458}, {0.41958, 0.755151, -0.57448}, {0.72349, 0.759653, -0.55458}, {0.59871, 0.898701, -0.56458}, {0.22242, 0.27794, -0.56458}};
	};
	class Land_i_Stone_HouseSmall_V3_F : Residential {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, -0.57448}, {0.82349, 0.769653, -0.57458}, {0.67871, 0.918701, -0.57458}, {0.41958, 0.755151, -0.57448}, {0.72349, 0.759653, -0.55458}, {0.59871, 0.898701, -0.56458}, {0.22242, 0.27794, -0.56458}};
	};
	
	class Land_i_Stone_Shed_V1_F : Hunting {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-1.31958, 0.655151, -0.07448}, {-2.82349, 0.769653, -0.07458}, {-2.67871, 0.918701, -0.07458}, {-2.41958, 0.755151, -0.07448}};
	};
	class Land_i_Stone_Shed_V2_F : Hunting {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-1.31958, 0.655151, -0.07448}, {-2.82349, 0.769653, -0.07458}, {-2.67871, 0.918701, -0.07458}, {-2.41958, 0.755151, -0.07448}};
	};
	class Land_i_Stone_Shed_V3_F : Hunting {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-1.31958, 0.655151, -0.07448}, {-2.82349, 0.769653, -0.07458}, {-2.67871, 0.918701, -0.07458}, {-2.41958, 0.755151, -0.07448}};
	};
	
	class Land_i_House_Small_01_V3_F : Office {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{-3.31958, -1.655151, -0.97000}, {-3.82349, 2.069653, -0.97000}, {3.07871, 3.518701, -0.97000}};
	};
	
	class Land_i_House_Small_01_V1_F : Office {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman","z_deadsurvivor"};
		lootPos[] = {{-3.31958, -1.655151, -0.97000}, {-3.82349, 2.069653, -0.97000}, {3.07871, 3.518701, -0.97000}};
	};
	
	class Land_i_Addon_03_V1_F : Industrial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.31958, 0.655151, 1.27448}, {0.82349, 0.769653, 1.27458}};
	};
	
	class Land_UWreck_FishingBoat_F : MilitarySpecial {
		lootPos[] = {{5.39038, -1.75684, -1.09824}, {1.46753, -0.131836, -1.09824}, {1.29395, -2.16211, -1.09824}, {-1.78394, -0.168945, -1.09824}, {-1.80615, -1.97656, -1.09824}, {-4.77881, 0.0488281, -1.09824}, {-5.39258, -2.11816, -1.09824}, {-5.47046, 2.58105, -1.09824}, {-8.32593, -0.144531, -1.09824}, {-9.14966, -2.55859, -1.09824}, {-1.95288, 2.57715, -1.09824}, {5.46362, 2.57813, -1.09824}};
	};
	
	class Land_UWreck_MV22_F : Industrial {
		lootPos[] = {{-0.982422, -1.92627, -2.21573}, {-2.01782, -4.2417, -2.21918}, {-0.759277, 1.42139, -2.21573}};
	};
	
	class Land_Wreck_Car3_F : Military {
		vehPos[] = {{13.439, 3.25244, -5.71244, 84}};
		lootPos[] = {{12.457, 1.4248, -5.81439}, {11.0391, 4.85278, -5.81439}, {13.667, 4.42139, -5.81439}};
	};
	
	class Land_Wreck_Car2_F : Industrial {
		lootPos[] = {{0.48877, -1.61377, -1.09224}, {0.012207, 2.19263, -1.09224}, {0.00976563, 0.19043, -1.09224}};
	};
	class Blackhawkwreck : Helicrash {
		zombieClass[] = {"z_soldier_pilot", "z_soldier_heavy"};
		zombieChance = 1;
		lootChance = 1;
		minRoaming = 6;
		maxRoaming = 8;
		lootPos[] = {{0.61958, 2.155151, -0.75448}, {-0.82349, 2.269653, -0.75458}, {-1.67871, 2.318701, -0.75458}, {-1.82349, 2.769653, -0.75458}};
	};
	class Ambu : Hospital {
		lootChance = 0.4;
		minRoaming = 6;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{0.61958, -4.155151, -0.75448}, {-0.82349, -4.269653, -0.75458}, {-1.67871, -4.318701, -0.75458}, {-1.82349, 1.769653, -0.75458}};
	};
	class Firet : Hospital {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.01958, -2.655151, -0.75448}, {-3.82349, -3.069653, -0.75458}, {-3.67871, -1.918701, -0.75458}, {-3.82349, 2.769653, -0.77458}};
	};
	class Truckk : Industrial {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.1;
		zombieClass[] = {"zZombie_Base","z_villager3","z_villager2","z_villager1","z_policeman"};
		lootPos[] = {{3.01958, -2.655151, -0.75448}, {-3.82349, -3.069653, -0.75458}, {-3.67871, -1.918701, -0.75458}, {-3.82349, 2.769653, -0.77458}};
	};
};