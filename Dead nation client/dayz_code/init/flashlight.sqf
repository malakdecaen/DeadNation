[] spawn {
while { true } do {
    WaitUntil{(vehicle player == player) and (currentWeapon player == "MeleeFlashlight") and (dayz_lightOn)};
    sleep 1.2;
    call compile('
    lightA3 = "#lightpoint" create'+'Vehicle position player;
    lightA3_2 = "#lightpoint" create'+'Vehicle position player;
    lightA3_3 = "#lightpoint" create'+'Vehicle position player;
    lightA3_4 = "#lightpoint" create'+'Vehicle position player;
    lightA3_5 = "#lightpoint" create'+'Vehicle position player;
    ');
        lightA3 setLightBrightness 0.25;
        lightA3 setLightAmbient[0.0, 0.0, 0.0];
        lightA3 setLightColor[1.0, 1.0, 1.0];
        
        lightA3_2 setLightBrightness 0.2;
        lightA3_2 setLightAmbient[0.0, 0.0, 0.0];
        lightA3_2 setLightColor[1.0, 1.0, 1.0];
        
        lightA3_3 setLightBrightness 0.2;
        lightA3_3 setLightAmbient[0.0, 0.0, 0.0];
        lightA3_3 setLightColor[1.0, 1.0, 1.0];
        
        lightA3_4 setLightBrightness 0.1;
        lightA3_4 setLightAmbient[0.0, 0.0, 0.0];
        lightA3_4 setLightColor[1.0, 1.0, 1.0];
        
        lightA3_5 setLightBrightness 0.1;
        lightA3_5 setLightAmbient[0.0, 0.0, 0.0];
        lightA3_5 setLightColor[1.0, 1.0, 1.0];
        
    lightA3 attachTo [player, [
				0,
				(((boundingBox player select 1 select 1) max (-(boundingBox player select 0 select 1))) max ((boundingBox player select 1 select 0) max (-(boundingBox player select 0 select 0)))) + 2,
				1]
			];
    lightA3_2 attachTo [player, [
				0,
				(((boundingBox player select 1 select 1) max (-(boundingBox player select 0 select 1))) max ((boundingBox player select 1 select 0) max (-(boundingBox player select 0 select 0)))) + 4,
				2]
			];
    lightA3_3 attachTo [player, [
				0,
				(((boundingBox player select 1 select 1) max (-(boundingBox player select 0 select 1))) max ((boundingBox player select 1 select 0) max (-(boundingBox player select 0 select 0)))) + 6,
				3]
			];
    lightA3_4 attachTo [player, [
				0,
				(((boundingBox player select 1 select 1) max (-(boundingBox player select 0 select 1))) max ((boundingBox player select 1 select 0) max (-(boundingBox player select 0 select 0)))) + 8,
				3]
			];
    lightA3_5 attachTo [player, [
				0,
				(((boundingBox player select 1 select 1) max (-(boundingBox player select 0 select 1))) max ((boundingBox player select 1 select 0) max (-(boundingBox player select 0 select 0)))) + 10,
				3]
			];
    WaitUntil{(vehicle player != player) or (currentWeapon player != "MeleeFlashlight_A3") or (!dayz_lightOn)};
    deleteVehicle lightA3;
    deleteVehicle lightA3_2;
    deleteVehicle lightA3_3;
    deleteVehicle lightA3_4;
    deleteVehicle lightA3_5;
};
};