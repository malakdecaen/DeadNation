{
	[_x] join grpNull;    
}forEach units group player;
    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>You have disbanded the group.</t><br/>"];