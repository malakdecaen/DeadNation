#define private		0
#define protected		1
#define public		2
//arbre 8.4 (petit arbre) arbre 6 (palmier)
enum {
	DESTRUCTENGINE = 2,
	DESTRUCTDEFAULT = 6,
	DESTRUCTWRECK = 7,
	DESTRUCTTREE = 3,
	DESTRUCTTENT = 4,
	STABILIZEDINAXISX = 1,
	STABILIZEDINAXESXYZ = 4,
	STABILIZEDINAXISY = 2,
	STABILIZEDINAXESBOTH = 3,
	DESTRUCTNO = 0,
	STABILIZEDINAXESNONE = 0,
	DESTRUCTMAN = 5,
	DESTRUCTBUILDING = 1,
};

class CfgPatches {
	class Shackpart {
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {};
	};
};

class CfgMagazines {
	class CA_Magazine;	// External class reference
	
	class metalpart : CA_Magazine {
		scope = public;		
		count = 1;
		type = 256;
		mass = 40;
		icon = "iconObject_1x5";
		picture = "\shackpart\metalpart.paa";
		model = "\shackpart\metalshack.p3d";
		displayName = "Metal part for shack";
		descriptionShort = "Part of metal for build Shack";
			
	};
	class driller : CA_Magazine {
		scope = public;		
		count = 1;
		type = 256;
		mass = 20;
		picture = "\shackpart\driller.paa";
		author = "$STR_A3_Bohemia_Interactive";
		_generalMacro = "Land_DrillAku_F";
		displayName = "$STR_A3_cfgVehicles_Land_DrillAku_F0";
		model = "\A3\Structures_F\Items\Tools\DrillAku_F.p3d";
		icon = "iconObject_1x5";
		vehicleClass = "Cargo";
			
	};
	class Hammer : CA_Magazine {
		scope = public;		
		count = 1;
		type = 256;
		mass = 20;
		picture = "\shackpart\hammer.paa";
		author = "$STR_A3_Bohemia_Interactive";
		_generalMacro = "Land_Hammer_F";
		displayName = "$STR_A3_cfgVehicles_Land_Hammer_F0";
		model = "\A3\Structures_F\Items\Tools\Hammer_F.p3d";
		icon = "iconObject_1x5";
		vehicleClass = "Cargo";
	};
	class grinder : CA_Magazine {
		scope = public;		
		count = 1;
		type = 256;
		mass = 20;
		picture = "\shackpart\grinder.paa";
		author = "$STR_A3_Bohemia_Interactive";
		_generalMacro = "Land_Grinder_F";
		displayName = "$STR_A3_cfgVehicles_Land_Grinder_F0";
		model = "\A3\Structures_F\Items\Tools\Grinder_F.p3d";
		icon = "iconObject_1x2";
		vehicleClass = "Cargo";
	};
	class nails : CA_Magazine {
		scope = public;		
		count = 1;
		type = 256;
		mass = 10;
		picture = "\shackpart\nails.paa";
		author = "malakdecaen";
		_generalMacro = "Land_Grinder_F";
		displayName = "Nails Box";
		model = "\shackpart\nails.p3d";
		icon = "iconObject_1x2";
		vehicleClass = "Cargo";
		descriptionShort = "Hammer needed for using this";		
	};
	class woodpart : CA_Magazine {
		scope = public;		
		count = 1;
		type = 256;
		mass = 10;
		picture = "\shackpart\woodpart.paa";
		author = "malakdecaen";
		_generalMacro = "Land_Grinder_F";
		displayName = "Wood Part";
		model = "\shackpart\woodpart.p3d";
		icon = "iconObject_1x2";
		vehicleClass = "Cargo";
		descriptionShort = "Wood Part for build a shack";		
	};
};
