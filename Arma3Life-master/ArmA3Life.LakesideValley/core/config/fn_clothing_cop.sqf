#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
    case 0:
    {
        _ret set[count _ret,["cadet_uni","Cadet Uniform",1500]];
		if(__GETC__(life_coplevel) > 1) then
        {
			_ret set[count _ret,["A3L_Police_Uniform","DONT USE",1500]];
			_ret set[count _ret,["police_uni1","DONT USE",1500]];
        };
        if(__GETC__(life_coplevel) > 1) then
        {
			_ret set[count _ret,["police_uni2","DONT USE",1500]];
		};	
		if(__GETC__(life_coplevel) > 1) then
        {	
			_ret set[count _ret,["FBI_uni","FBI Uniform",1500]];
			_ret set[count _ret,["fto_uni","Field Training Uniform",1500]];
			_ret set[count _ret,["doj_uni","DoC Uniform",1500]];
			_ret set[count _ret,["sheriff_uni1","Highway Patrol Clothing",1500]];
			_ret set[count _ret,["A3L_Sheriff_Uniform","Lakeside Patrol Clothing",1500]];
			_ret set[count _ret,["sheriff_uni2","Captain Uniform",1500]];
			_ret set[count _ret,["police_uni3","Chief Uniform",1500]];
		};	
		if(!license_cop_swat) then
        {	
			_ret set[count _ret,["sert_1","Swat Uniform",1500]];
		};
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["A3L_policehelmet",nil,500]];
		_ret set[count _ret,["A3L_sargehat",nil,500]];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Aviator",nil,750],
			["G_Squares",nil,100],
			["G_Lowprofile",nil,300],
			["G_Combat",nil,550]
		];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["A3L_policevest2","Standard Vest(WF)",2000]];
			_ret set[count _ret,["A3L_policevest1","Standard Vest (YF) ",2000]];
		    _ret set[count _ret,["cl3_police_vest_yellow","Cadet/Recruit",200]];
		    _ret set[count _ret,["A3L_deptjvest1","DoC Vest",200]];
		    _ret set[count _ret,["TRYK_V_PlateCarrier_POLICE","Chief Vest",200]];
		};	
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["SWATvest1","SWAT Vest",2000]];
			_ret set[count _ret,["SWATvest2","SWAT Vest No Holster",2000]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["tf_anprc152",nil,800],
			["tf_rt1523g",nil,300],
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["cl3_police_tacticalbelt","Police Belt",800]
		];
	};
};

_ret;