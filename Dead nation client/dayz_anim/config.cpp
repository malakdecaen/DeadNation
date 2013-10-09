class CfgPatches {
	class dayz_anim {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
		isUpdated = true;
	};
};

class CfgMarkers {
	class Empty;

};


class CfgAmmo {
	class FakeAmmo;

};

class CfgMagazines {
	class Default;
	class FakeMagazine: Default
	{
		scope = 1;
		ammo = "FakeAmmo";
		stopThis = true;
		value = 1;
		displayName = "";
		model = "";
		picture = "";
		modelSpecial = "";
		useAction = 0;
		useActionTitle = "";
		reloadAction = "ManActReloadMagazine";
		count = 0;
		type = 256;
		initSpeed = 0;
		selectionFireAnim = "zasleh";
		nameSound = "magazine";
		maxLeadSpeed = 0;
	};
};

class CfgWeapons {
	class RifleCore;
	class FakeWeapon: RifleCore
	{
		scope = 1;
		stopThis = true;
		type = 0;
		cursor = "";
		cursoraim = "";
		sound[] = {};
		magazines[] = {"FakeMagazine"};
	};
};
class CfgVehicles {
	class All;
	class Banned: All
	{
		stopThis = true;
	};

};
class CfgSkeletons
{
	class Default
	{
		isDiscrete = 1;
		skeletonInherit = "";
		skeletonBones[] = {};
	};

	class OFP2_ManSkeleton;
};
 
class CfgModels
{
	class Default
	{
		sectionsInherit = "";
		sections[] = {};
		skeletonName = "";
	};

	class ArmaMan : Default
	{
    skeletonName = "OFP2_ManSkeleton";
	};
 
	class zmbStandIdleA : ArmaMan {};
	class zmbStandIdleB : ArmaMan {};
	class zmbStandIdleC_lookAround : ArmaMan {};
	class zmbStandIdleD_sniffingHyped : ArmaMan {};
	class zmbStandIdleE_swinging : ArmaMan {};
	class zmbStandCry1 : ArmaMan {};
	class zmbStandCry2 : ArmaMan {};
	class zmbStandDeath1 : ArmaMan {};
	class zmbStandDeath2 : ArmaMan {};
	class zmbStandDeath3 : ArmaMan {};
	class zmbStandAttack1 : ArmaMan {};
	class zmbStandAttack2bite : ArmaMan {};
	class zmbStandAttack3 : ArmaMan {};
	class zmbStandAttack4 : ArmaMan {};
	class zmbStandAttack5 : ArmaMan {};
	class zmbStandAttack6 : ArmaMan {};
	class zmbStandWalkF1 : ArmaMan {};
	class zmbStandWalkF2 : ArmaMan {};
	class zmbStandRunF1 : ArmaMan {};
	class zmbStandRunF2 : ArmaMan {};
	class zmbStandRunF3 : ArmaMan {};
	class zmbStandHit1_toRunF1 : ArmaMan {};
	class zmbStandHit2 : ArmaMan {};
	class zmbStandHit3_fromBehind : ArmaMan {};
	class zmbStandHit4 : ArmaMan {};
	class zmbBentIdleA : ArmaMan {};
	class zmbBentIdleB_lookAroundSwing : ArmaMan {};
	class zmbBentIdleC_lookAround : ArmaMan {};
	class zmbStand_zmbKneel : ArmaMan {};
	class zmbKneel_zmbStand : ArmaMan {};
	class zmbKneel_idleA : ArmaMan {};
	class zmbKneel_idleB : ArmaMan {};
	class zmbKneel_idleC : ArmaMan {};
	class zmbKneel_idleD : ArmaMan {};
	class zmbKneel_feedA : ArmaMan {};
	class zmbKneel_feedB : ArmaMan {};
	class zmbKneel_feedC : ArmaMan {};
	class zmbKneel_feedD : ArmaMan {};
	class zmbKneel_feedE : ArmaMan {};
	class zmbKneel_deathA : ArmaMan {};
	class zmbKneel_deathB : ArmaMan {};
	class zmbKneelAttack1_toStand : ArmaMan {};
	class zmbKneelAttack2 : ArmaMan {};
	class zmbKneelWalkF : ArmaMan {};
	class zmbKneelWalkB : ArmaMan {};
	class zmbKneeljogF : ArmaMan {};
	class zmbKneelrunF1 : ArmaMan {};
	class zmbKneelrunF2 : ArmaMan {};
	class zmbKneelrunF3 : ArmaMan {};
	class zmbKneelrunFrenzy1 : ArmaMan {};
	class zmbKneelrunFrenzy2 : ArmaMan {};
	class zmbKneelHit1 : ArmaMan {};
	//class zmbKneelHit1 : ArmaMan {};
	class zmbKneelHit2 : ArmaMan {};
	class zombie1_attack : ArmaMan {};
	class zombie1_deathFromWalk : ArmaMan {};
	class zombie1_walk : ArmaMan {};
	class zombie1_jump : ArmaMan {};
	class zombie1_birth : ArmaMan {};
	class zombie2_walk : ArmaMan {};
	class zombie2_birth : ArmaMan {};
	class zombie2_deathFromWalk : ArmaMan {};
	class zombie2_attack : ArmaMan {};
	class zombie2_jump : ArmaMan {};
	class zombie3_attack : ArmaMan {};
	class zombie3_birth : ArmaMan {};
	class zombie3_walk : ArmaMan {};
	class zombie3_jump : ArmaMan {};
	class zmbErcSprint9 : ArmaMan {};
	class zmbErcSprint13 : ArmaMan {};
	class zombie_frenziedCrawl3 : ArmaMan {};
	//class zombie_frenziedCrawl3 : ArmaMan {};
	class zombie_runDeaths6 : ArmaMan {};
	class zombie_stumble3 : ArmaMan {};
	class zombie_walk2sprint2 : ArmaMan {};
	//class zombie_frenziedCrawl3 : ArmaMan {};
	class zombieStand2KneelFeeding : ArmaMan {};
	class KneelFeeding2zombieStand : ArmaMan {};
	class zombie_kneelFeeding2_112_301 : ArmaMan {};
	//class zombie_kneelFeeding2_1054_1275 : ArmaMan {};
	//class zombie_kneelFeeding3_109-308 : ArmaMan {};
	//class zombie_kneelFeeding3_363-574 : ArmaMan {};
	//class zombie_kneelFeeding3_idle_1292-1461 : ArmaMan {};
	//class zombie_kneelFeeding3_idle_1488-1587 : ArmaMan {};
	//class zombie_kneelFeeding2_idle_893-1054 : ArmaMan {};
	//class zombie_kneelFeeding2_idle_893-1054 : ArmaMan {};
	//class zombie_kneelFeeding2_idle_1275-1430 : ArmaMan {};
	//class zombie_standSpasms1Stand_74-112 : ArmaMan {};
	//class zombie_standSpasms1Stand_74-112 : ArmaMan {};
	//class zombie_standSpasms1Stand_113-198 : ArmaMan {};
	//class zombie_standSpasms1Stand_199-327 : ArmaMan {};
	//class zombie_standSpasms1Stand_199-327 : ArmaMan {};
	//class zombie_standSpasms2bentPose_82-134 : ArmaMan {};
	//class zombie_standSpasms2bentPose_135-178 : ArmaMan {};
	//class zombie_standSpasms2bentPose_179-235 : ArmaMan {};
	//class zombie_standSpasms2bentPose_236-293 : ArmaMan {};
	//class zombie_standSpasms2bentPose_294-336 : ArmaMan {};
	//class zombie_standSpasms2bentPose_337-439 : ArmaMan {};
	//class zombie_standSpasms3Stand_83-190 : ArmaMan {};
	//class zombie_standSpasms3Stand_191-314 : ArmaMan {};
	//class zombie_standSpasms3Stand_315-400 : ArmaMan {};
	//class zombie_standSpasms3Stand_315-400 : ArmaMan {};
	//class zombie_standSpasms3Stand_401-478 : ArmaMan {};
	//class zombie_staticAttack3_67-158 : ArmaMan {};
	//class zombie_staticAttack3_67-158 : ArmaMan {};
	//class zombie_staticAttack3_183-274 : ArmaMan {};
	//class zombie_staticAttack3_183-274 : ArmaMan {};
	//class zombie_staticAttack3_441-554 : ArmaMan {};
	//class zombie_staticAttack3_570-707 : ArmaMan {};
	//class zombie_staticAttack3_742-833 : ArmaMan {};
	//class zombie_staticAttack3_855-987 : ArmaMan {};
	//class zombie_sniffing_264-499 : ArmaMan {};
	//class zombie_sniffing_573-809 : ArmaMan {};
	//class zombie_sniffing_573-809 : ArmaMan {};
};