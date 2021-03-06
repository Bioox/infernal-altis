/*
File: radarControlCity.sqf
Description: Does what it has to be done.
Author: "theInfinit"
Edited by: Genetics
*/

private["_vehspeed","_maxspeed","_driver","_veh"];
_vehspeed = speed player;
_maxspeed = 50;
_driver = driver player;
_veh = vehicle player;

// Serie of checks
if(getPosATL _veh select 2 > 30) exitWith {}; // If the vehicle is a chopper and he's flying nearby, does nothing
if(side _driver == west) exitWith {}; // If the driver is a cop => No flash
if((_veh getVariable "siren")) exitWith {}; // Second check for cops

// Checks the speed and do the right stuff
if(round _vehspeed >= (_maxspeed + 55)) then // If speed is equal or more than 105
{
        hint format[ "Sie wurden mit %1 km/h gemessen 50km/h sind erlaubt. Ihnen wurden $9000 Strafe abgezogen. Halten sie sich an die Geschwindigkeitbegrenzung!",[round _vehspeed]];
	playSound "Camera_Shot_Sound_Effect";
	titleText["Geblitzt","WHITE OUT"];
	titleText["","WHITE IN"];
	[[getPlayerUID _driver, _driver getVariable["realname",name _driver],"100"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; // Adds vehicle driver to the wanted list
};

if((round _vehspeed >= (_maxspeed + 40)) && (round _vehspeed < 105)) then // If speed is between 90 and 104
{
        hint format[ "Sie wurden mit %1 km/h gemessen 50km/h sind erlaubt. Ihnen wurden $5000 Strafe abgezogen. Halten sie sich an die Geschwindigkeitbegrenzung!",[round _vehspeed]];
        playSound "Camera_Shot_Sound_Effect";
	titleText["Geblitzt","WHITE OUT"];
	titleText["","WHITE IN"];
	[[getPlayerUID _driver, _driver getVariable["realname",name _driver],"101"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; // Adds vehicle driver to the wanted list
};

if((round _vehspeed >= (_maxspeed + 25)) && (round _vehspeed < 90)) then // If speed is between 75 and 89
{
        hint format[ "Sie wurden mit %1 km/h gemessen 50km/h sind erlaubt. Ihnen wurden $5000 Strafe abgezogen. Halten sie sich an die Geschwindigkeitbegrenzung!",[round _vehspeed]];
        playSound "Camera_Shot_Sound_Effect";
	titleText["Geblitzt","WHITE OUT"];
	titleText["","WHITE IN"];
	[[getPlayerUID _driver, _driver getVariable["realname",name _driver],"102"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; // Adds vehicle driver to the wanted list
};

if((round _vehspeed >= (_maxspeed + 10)) && (round _vehspeed < 75)) then // If speed is between 60 and 74
{
        hint format[ "Sie wurden mit %1 km/h gemessen 50km/h sind erlaubt. Ihnen wurden $5000 Strafe abgezogen. Halten sie sich an die Geschwindigkeitbegrenzung!",[round _vehspeed]];
        playSound "Camera_Shot_Sound_Effect";
	titleText["Geblitzt","WHITE OUT"];
	titleText["","WHITE IN"];
	[[getPlayerUID _driver, _driver getVariable["realname",name _driver],"103"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; // Adds vehicle driver to the wanted list
};
