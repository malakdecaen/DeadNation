private["_inviterUID","_inviter"];

//Get the inviters UID
_groupExists = false;
{
	if(getPlayerUID player == _x select 1) then
	{
    	_inviterUID = _x select 0;
        currentInvites set [_forEachIndex,"REMOVETHISCRAP"];
        currentInvites = currentInvites - ["REMOVETHISCRAP"];
        publicVariableServer "currentInvites";       
	};
}forEach currentInvites;

//Get the inviter with their UID
{
	if(getPlayerUID _x == _inviterUID) then
    {
    	_inviter = _x;
        _groupExists = true;	    
    };   
}forEach playableUnits;

if(_groupExists) then
{
	[player] join (group _inviter);
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>You have joined %1's group!</t><br/>", name _inviter];
} else {
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>Sorry, %1 disbanded the group!</t><br/>", name _inviter];
}; 