/*
	--- Script fait par =[TTK]= Yourry --- 
	--- Chargement de l'inventaire sauvegardé ---
	--- ARMA 3 --- 
	--- S.E.S ---
	-- V0.90--
*/


private ["_loadout", "_i", "_details"];


_loadout = _this select 0;

diag_log"SES_Loadgear----START";

if(isNil {_loadout}) exitWith {hint"ERREUR: pas de sauvegarde d'inventaire !!!"}; //Slot data doesn't exist

//DEbug
_nb = 0;
diag_log"--------------------------";
diag_log format ["SES_Load_gear---NAME PLAYER: %1",(name player)];	
	{		
		diag_log format ["_x_%2: %1",_x,_nb];	
		_nb = _nb + 1;
	} foreach _loadout;
diag_log"--------------------------";


//Strip the unit down
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;

{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

for "_i" from 1 to (count _loadout) do {
	switch (_i-1) do {		
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------			
		//Donne du sac	
		case (2) : {
			if(count (_loadout select (_i-1))>0) then {							
				{					
					if(_x!="") then {					
						player addBackpack _x;
						
						//Supprime le contenu de certain sac déjà pré-rempli :
						{						
							_details = [_x] call VAS_fnc_fetchCfgDetails;						
							switch (_details select 6) do {
								case "CfgMagazines": {player removeMagazines _x; /*diag_log format ["Magazines_supprimé: %1",_x];*/};							
								case "CfgWeapons": {removeAllWeapons player; /*diag_log format ["Weapons_supprimé: %1",_x];*/};							
								default {player removeItems _x; /*diag_log format ["Items_supprimé: %1",_x];*/};
							};						
						}foreach (backPackItems player);	
					};					
				} foreach (_loadout select (_i-1));									
			};			
		};			
		
		//Chargement du sac à dos 		
		case (13) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {
						_details = [_x] call VAS_fnc_fetchCfgDetails;
						//diag_log format ["Détails_sac: _x: %1 // %2",_x,_details];						
						switch (_details select 6) do {
							case "CfgMagazines": {(unitBackpack player) addMagazineCargoGlobal [_x,1];};
							//case "CfgWeapons": {(unitBackpack player) addWeaponCargoGlobal [_x,1];};	
							case "CfgWeapons": {if(count(_details select 7)==0)then{(unitBackpack player) addItemCargoGlobal [_x,1];}else{(unitBackpack player) addWeaponCargoGlobal [_x,1];};};								
							//default {(unitBackpack player) addItemCargoGlobal [_x,1];};		
							default {(unitBackpack player) addWeaponCargoGlobal [_x,1];};						
						};
					};
				} foreach (_loadout select (_i-1));			
			};
		};
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------		
		//Donne un uniforme
		case (0) : {		
			if(count (_loadout select (_i-1))>0) then {
				{
					if(_x!="") then {	
						player addUniform _x;
						/*diag_log format ["%1",_x];*/	
					};
				} foreach (_loadout select (_i-1));
			};		
		};	
		
		//Chargement de l'uniforme :
		case (11) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						_details = [_x] call VAS_fnc_fetchCfgDetails;	
						//diag_log format ["Détails_uniform: _x: %1 // %2",_x,_details];										
						switch (_details select 6) do {
							case "CfgMagazines": {player addMagazine _x;		};
							case "CfgWeapons": {if(count(_details select 7)==0)then{player addItem _x;}else{player addWeapon _x;}		};	
							default {player addItem _x;	/*diag_log format ["Item: %1",_x];*/	};				
						};
					};
				} foreach (_loadout select (_i-1));	
				
			};
		};			
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------			
		//Donne une veste
		case (1) : {		
			if(count (_loadout select (_i-1))>0) then {
				{
					if(_x!="") then {	
						player addVest _x; /*diag_log format ["%1",_x];	*/
					};
				} foreach (_loadout select (_i-1));
			};			
		};		
	
		//Chargement de la veste :
		case (12) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						_details = [_x] call VAS_fnc_fetchCfgDetails;
						//diag_log format ["Détails_vest: _x: %1 // %2",_x,_details];										
						switch (_details select 6) do {
							case "CfgMagazines": {player addMagazine _x;};
							case "CfgWeapons": {if(count(_details select 7)==0)then{player addItem _x;}else{player addWeapon _x;}		};	
							default {player addItem _x;	/*diag_log format ["Item: %1",_x];*/	};						
						};
					};
				} foreach (_loadout select (_i-1));					
			};
		};	
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		//Rend le nombre de balle exacte dans le chargeur des armes :
		case (17) : {			
			if(count (_loadout select (_i-1))>0) then {				
				if(((_loadout select (_i-1))select 0) !="") then {				
					if(count (_loadout select (_i-1))>1) then {		
						player addMagazine [((_loadout select (_i-1))select 0),((_loadout select (_i-1))select 1)];
					}else{
						player addMagazine ((_loadout select (_i-1))select 0);
					};
					/*diag_log format ["%1 // %2",((_loadout select (_i-1))select 0),((_loadout select (_i-1))select 1)];*/
				};							
			};
		};
		case (18) : {			
			if(count (_loadout select (_i-1))>0) then {				
				if(count(_loadout select (_i-1))>1)then{
					if(count((_loadout select (_i-1))>1))then{
						player addMagazine [((_loadout select (_i-1))select 0),((_loadout select (_i-1))select 1)];
					}else{
						player addMagazine ((_loadout select (_i-1))select 0);
					};
					/*diag_log format ["%1 // %2",((_loadout select (_i-1))select 0),((_loadout select (_i-1))select 1)];*/
				};							
			};
		};			
		case (19) : {			
			if(count (_loadout select (_i-1))>0) then {	
				if(((_loadout select (_i-1))select 0) !="") then {
					if(count(_loadout select (_i-1))>1)then{
						player addMagazine [((_loadout select (_i-1))select 0),((_loadout select (_i-1))select 1)];
					}else{
						player addMagazine ((_loadout select (_i-1))select 0);
					};
					/*diag_log format ["%1 // %2",((_loadout select (_i-1))select 0),((_loadout select (_i-1))select 1)];*/
				};							
			};
		};			
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------		
		//Donne les armes du joueurs :				
		case (4) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						player addWeapon _x;
					};
				} foreach (_loadout select (_i-1));		
				//Supprime les items des armes par défaut
				{player removePrimaryWeaponItem _x}foreach (primaryWeaponItems player);					
			};
		};		
		case (5) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						player addWeapon _x;
					};
				} foreach (_loadout select (_i-1));		
				//Supprime les items des armes par défaut
				//{player removeSecondaryWeaponItem _x}foreach (secondaryWeaponItems player);					
			};
		};
		case (6) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						player addWeapon _x;
					};
				} foreach (_loadout select (_i-1));		
				//Supprime les items des armes par défaut
				{player removeHandgunItem _x}foreach (handgunItems player);					
			};
		};
		case (20) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {						
						player selectWeapon (_x);						
					};
				} foreach (_loadout select (_i-1));					
			};
		};		
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------				
		//Donne les items 
		case (7) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						player addItem _x;
						player assignItem _x;						
					};
				} foreach (_loadout select (_i-1));					
			};
		};	
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		//Donne le casque		
		case (14) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						player addHeadGear _x;
					};
				} foreach (_loadout select (_i-1));					
			};
		};
	
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------		
		//Donne les lunettes			
		case (15) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						player addGoggles _x;
					};
				} foreach (_loadout select (_i-1));					
			};
		};
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
		//Assigne les items l'arme principale
		case (8) : {
			if(count (_loadout select (_i-1))>0) then {				
				{		
					if(_x!="") then {
						//ON lance un spawn pour temporiser le montage des armes sinon l'ajout d'item déconne
						_x spawn {sleep 1;player addPrimaryWeaponItem _this;};
					};
				} foreach (_loadout select (_i-1));						
			};
		};  

		//Assigne les items l'arme secondaire
		case (9) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {	
						//ON lance un spawn pour temporiser le montage des armes sinon l'ajout d'item déconne					
						_x spawn {sleep 1;player addSecondaryWeaponItem _this;};
					};
				} foreach (_loadout select (_i-1));					
			};
		}; 

		//Assigne les items sur le pistolet				
		case (10) : {
			if(count (_loadout select (_i-1))>0) then {
				{		
					if(_x!="") then {						
						//ON lance un spawn pour temporiser le montage des armes sinon l'ajout d'item déconne	
						_x spawn {sleep 1;player addHandgunItem _this;};
					};
				} foreach (_loadout select (_i-1));					
			};
		};		
	};		
};

//Recharge les armes
reload player; 



diag_log"SES_Loadgear----END";







