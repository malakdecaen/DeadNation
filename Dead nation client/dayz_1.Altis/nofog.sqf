setviewdistance 2500;
bis_fog = 0;
 
setviewdistance 2500;
0 setovercast 0;
0 setrain 0;
//0 setfog 0;
0 setfog 0;
 
[] spawn {
    _delay = 3;
    sleep 0.01;
    while {true} do {
        _delay  setovercast 0;
        _delay  setrain 0;
        _delay  setfog 0;
        sleep _delay ;
    };
};