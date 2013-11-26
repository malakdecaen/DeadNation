#define gDialog 55510
#define gInviteButton 55511
#define gDisbandButton 55512
#define gLeaveButton 55513
#define gAcceptButton 55514
#define gDeclineButton 55515
#define gInviteText 55516

class GroupManagement {

	idd = gDialog;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {
		
		class MainBG : w_RscPicture {
			idc = -1;
			//text = "\ca\ui\data\ui_background_controlers_ca.paa";		
			moving = true;
			x = 0.0; y = 0.1;
			w = 1.0; h = 0.65;
		};
		
		class MainTitle : w_RscText {
			idc = -1;
			text = "Group Management";
			sizeEx = 0.04;
			shadow = 2;		
			x = 0.260; y = 0.112;
			w = 0.3; h = 0.05;
		};

		class InviteText: w_RscStructuredText
		{
			idc = gInviteText;
			text = "";
			size = 0.025;

			x = 0.255; y = 0.500;
			w = 0.235; h = 0.075;
		};
	};
	
	class controls {
    
		class CloseButton : w_RscButton {
			idc = -1;
			text = "Close";
			onButtonClick = "closeDialog 0; gActive = false;";
			x = 0.02; y = 0.68;
			w = 0.125; h = 0.033 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};

		class InviteButton : w_RscButton {
			idc = gInviteButton;
			text = "Invite";
			onButtonClick = "[] execVM '\z\addons\dayz_code\group\dialog\inviteToGroup.sqf'";
			x = 0.3075; y = 0.200;
			w = 0.125; h = 0.033 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};

		class DisbandButton : w_RscButton {
			idc = gDisbandButton;
			text = "Disband";
			onButtonClick = "[] execVM '\z\addons\dayz_code\group\dialog\disbandGroup.sqf'";
			x = 0.3075; y = 0.300;
			w = 0.125; h = 0.033 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};

		class LeaveButton : w_RscButton {
			idc = gLeaveButton;
			text = "Leave Group";
			onButtonClick = "[] execVM '\z\addons\dayz_code\group\dialog\leaveGroup.sqf'";
			x = 0.3075; y = 0.350;
			w = 0.125; h = 0.033 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};

		class AcceptInviteButton : w_RscButton {
			idc = gAcceptButton;
			text = "Accept";
			onButtonClick = "[] execVM '\z\addons\dayz_code\group\dialog\acceptGroupInvite.sqf'";
			x = 0.275; y = 0.625 - 0.0255 * safezoneH;
			w = 0.100; h = 0.033 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};

		class DeclineInviteButton : w_RscButton {
			idc = gDeclineButton;
			text = "Decline";
			onButtonClick = "[] execVM '\z\addons\dayz_code\group\dialog\declineGroupInvite.sqf'";
			x = 0.375; y = 0.625 - 0.0255 * safezoneH;
			w = 0.100; h = 0.033 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
	};

};