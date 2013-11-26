//Original file by the guys at [404] Wasteland. Awesome set of scripts.

#define gDialog 55510
#define gInviteButton 55511
#define gDisbandButton 55512
#define gLeaveButton 55513
#define gAcceptButton 55514
#define gDeclineButton 55515
#define gInviteText 55516
disableSerialization;
				
private ["_start","_dialog","_myGroup","_playerListBox","_groupListBox","_uid","_namestr","_index","_groupCreate","_groupInvite","_groupKick","_groupDisband","_groupLeaveButton","_inGroup","_isLeader","_name"];
closeDialog 0;
_start = createDialog "GroupManagement";			
_dialog = findDisplay gDialog;
gActive = true;
_groupInvite = _dialog displayCtrl gInviteButton;
_groupDisband = _dialog displayCtrl gDisbandButton;
_groupLeaveButton = _dialog displayCtrl gLeaveButton;
_groupAcceptInvite = _dialog displayCtrl gAcceptButton;
_groupDeclineInvite = _dialog displayCtrl gDeclineButton;
_groupInviteText = _dialog displayCtrl gInviteText;

_groupInvite ctrlShow false;
_groupDisband ctrlShow false;
_groupLeaveButton ctrlShow false;
_groupDeclineInvite ctrlShow false;
_groupAcceptInvite ctrlShow false;
_hasInvite = false;

while{gActive} do
{
    //Check if player has invite.
    {
    if(_x select 1 == getPlayerUID player) then {_hasInvite = true};
    } forEach currentInvites;
    
    //Member Controls
    if(count units group player > 1) then 
    {
        if(player == leader group player) then
        {
			_groupDisband ctrlShow true;
			_groupLeaveButton ctrlShow true;    
        } else {
			_groupLeaveButton ctrlShow true;    
        };
    } else {
		_groupDisband ctrlShow false;
		_groupLeaveButton ctrlShow false;    
    };
    
    //Enables Invite Button
    if ((typeOf cursorTarget in ["SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","Bandit2_DZ","Survivor3_DZ","Survivor4_DZ","Survivor5_DZ","Bandit3_DZ","SurvivorR_DZ","SurvivorB_DZ","Ranger_DZ"]) and (player distance cursorTarget <= 5)) then {
        _groupInvite ctrlShow true;
    } else {
        _groupInvite ctrlShow false;
        if !(_hasInvite) then {
        _groupInviteText ctrlShow true;
        _groupInviteText ctrlSetStructuredText parseText (format ["You must be looking at a player<br/>within 5 meters of you<br/>in order to invite them."]);
        };
    };
    
    //Sort Invite Controls
    if(_hasInvite) then
    {
        _groupInviteText ctrlShow true;
        _groupAcceptInvite ctrlShow true;
        _groupDeclineInvite ctrlShow true; 
        	  	
        //Get Invite Text and Set it.
        {
            _invite = _x;
            if(_invite select 1 == getPlayerUID player) then {
                {
                    if(_invite select 0 == getPlayerUID _x) then {
                        _name = name(_x);
                    };
                } forEach playableUnits;
            };
        }forEach currentInvites;
        
        _groupInviteText ctrlSetStructuredText parseText (format ["Invite to group from<br/>%1",_name]);
        
    } else {
    	_groupAcceptInvite ctrlShow false;
        _groupDeclineInvite ctrlShow false;
        _groupInviteText ctrlShow true;
        _groupInviteText ctrlSetStructuredText parseText (format ["You must be looking at a player close to you to invite them."]);   
    };
    
	sleep 0.5;
    _hasInvite = false;
};