if(player != leader group player) exitWith {
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>You are not the leader and can't invite others.</t><br/>"];
};

#define gDialog 55510

disableSerialization;

private["_dialog","_playerListBox","_groupInvite","_target","_index","_playerData","_check","_unitCount","_hasInvite","_distance"];

_dialog = findDisplay gDialog;

_hasInvite = false;
_check = 0;

//Check selected data is valid   			
if ((typeOf cursorTarget in ["Survivor3_DZ","Survivor4_DZ","Bandit2_DZ","SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","Bandit3_DZ","Survivor5_DZ","SurvivorB_DZ","SurvivorR_DZ","Ranger_DZ"]) and (player distance cursorTarget <= 5)) then { _target = cursorTarget;_check = 1;_distance = 1; };

//Checks
if(_check == 0) exitWith{
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>You must be looking at a player to invite them.</t><br/>"];
        };
if(_distance == 0) exitWith{
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>The player you want to invite must be within 5 meters.</t><br/>"];
        };
if((count units group _target) > 1) exitWith {
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>This player is already in a group.</t><br/>"];};

{if(_x select 1 == getPlayerUID _target) then{_hasInvite = true;};}forEach currentInvites;
if(_hasInvite) exitWith {
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>This player already has a pending invite.</t><br/>"];};

currentInvites set [count currentInvites,[getPlayerUID player,getPlayerUID _target]];
publicVariableServer "currentInvites"; 


    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>You have invited %1 to the group.</t><br/>", name _target];