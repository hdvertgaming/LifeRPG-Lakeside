#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["FirstAidKit",nil,250],
											["Medikit",nil,500],
											["ToolKit",nil,500]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,350],
											["tf_anprc152",nil,100],
                                            ["tf_rt1523g",nil,300],
											["ItemGPS",nil,250],
											["Binocular",nil,1250],
											["ToolKit",nil,500],
											["Chemlight_red",nil,200],
											["NVGoggles",nil,5000]
                                        ]
                                ];
                        };
                };
        };
	
		
        case "cop_cadet":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Cadet Shop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
        case "cop_officer":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a Officer rank!"};
                        default
                        {
                                ["Officer Shop",
                                        [		
                                                ["A3L_Glock17",nil,5000],
												["A3L_Glock17mag",nil,500],
												
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
											
		
                                        ]
                                ];
                        };
                };
        };
        case "cop_seniorofficer":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Senior Officer!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a Senior Officer rank!"};
                        default
                        {
                                ["Senior Officer Shop",
                                        [
										        ["A3L_MP5",nil,10000],
												["A3L_MP5mag",nil,1000],	
												["A3L_MP5Silencer",nil,1000],
                                                ["A3L_Glock17",nil,5000],
												["A3L_Glock17mag",nil,500],
												
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Sergeant!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a Sergeant rank!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
                                                ["A3L_M4A3",nil,20000],
                                                ["A3L_M4mag",nil,2000],
                                                ["A3L_M4Flashlight",nil,1000],
												["A3L_CCO",nil,1000],
												["A3L_RedDot",nil,1000],
												["A3L_MP5",nil,10000],
												["A3L_MP5mag",nil,1000],	
												["A3L_MP5Silencer",nil,1000],
                                                ["A3L_Glock17",nil,5000],
												["A3L_Glock17mag",nil,500],
												
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_lieutenant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Lieutenant!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not at a Lieutenant rank!"};
                        default
                        {
                                ["Lieutenant Shop",
                                        [
										        ["RH_M16A4",nil,30000],
                                                ["RH_30Rnd_556x45_M855A1",nil,3000],
                                                ["RH_reflex",nil,1000],
                                                ["optic_Arco",nil,1000],
                                                ["A3L_M4A3",nil,20000],
                                                ["A3L_M4mag",nil,2000],
                                                ["A3L_M4Flashlight",nil,1000],
												["A3L_CCO",nil,1000],
												["A3L_RedDot",nil,1000],
												["A3L_MP5",nil,10000],
												["A3L_MP5mag",nil,1000],	
												["A3L_MP5Silencer",nil,1000],
                                                ["A3L_Glock17",nil,5000],
												["A3L_Glock17mag",nil,500],
												
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_captain":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Captain!"};
                        case (__GETC__(life_coplevel) < 6): {"You are not at a Captain rank!"};
                        default
                        {
                                ["Captain Shop",
                                        [
										        ["RH_Hk416",nil,50000],
                                                ["RH_30Rnd_556x45_Mk262",nil,5000],
												["RH_usp",nil,5000],
                                                ["RH_12Rnd_45cal_usp",nil,500],
												["RH_M16A4",nil,30000],
                                                ["RH_30Rnd_556x45_M855A1",nil,3000],
                                                ["RH_reflex",nil,1000],
                                                ["optic_Arco",nil,1000],
                                                ["A3L_M4A3",nil,20000],
                                                ["A3L_M4mag",nil,2000],
                                                ["A3L_M4Flashlight",nil,1000],
												["A3L_CCO",nil,1000],
												["A3L_RedDot",nil,1000],
												["A3L_MP5",nil,10000],
												["A3L_MP5mag",nil,1000],	
												["A3L_MP5Silencer",nil,1000],
                                                ["A3L_Glock17",nil,5000],
												["A3L_Glock17mag",nil,500],
												
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_chief":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Chief!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not at a Chief rank!"};
                        default
                        {
                                ["Chief Shop",
                                        [
										        ["RH_Hk416",nil,50000],
                                                ["RH_30Rnd_556x45_Mk262",nil,5000],
												["RH_usp",nil,5000],
                                                ["RH_12Rnd_45cal_usp",nil,500],
												["RH_M16A4",nil,30000],
                                                ["RH_30Rnd_556x45_M855A1",nil,3000],
                                                ["RH_reflex",nil,1000],
                                                ["optic_Arco",nil,1000],
                                                ["A3L_M4A3",nil,20000],
                                                ["A3L_M4mag",nil,2000],
                                                ["A3L_M4Flashlight",nil,1000],
												["A3L_CCO",nil,1000],
												["A3L_RedDot",nil,1000],
												["A3L_MP5",nil,10000],
												["A3L_MP5mag",nil,1000],	
												["A3L_MP5Silencer",nil,1000],
                                                ["A3L_Glock17",nil,5000],
												["A3L_Glock17mag",nil,500],
												
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not in SWAT!"};
                        case (!license_cop_swat): {"You are not in SWAT!"};
                        default
                        {
                                ["SWAT Shop",
                                        [
										        ["RH_M16A6",nil,2000],
                                                ["RH_eotech553mag",nil,500],
                                                ["RH_30Rnd_68x43_FMJ",nil,500],
                                                ["RH_M4m",nil,3500],
                                                ["RH_30Rnd_556x45_M855A1",nil,500],
                                                ["RH_M4A6",nil,2000],
                                                ["RH_30Rnd_68x43_FMJ",nil,500]
										        ["RH_Hk416",nil,5000],
                                                ["RH_30Rnd_556x45_Mk262",nil,50],
												["RH_usp",nil,1000],
                                                ["RH_12Rnd_45cal_usp",nil,500],
												["RH_M16A4",nil,2000],
                                                ["RH_30Rnd_556x45_M855A1",nil,500],
                                                ["RH_reflex",nil,500],
                                                ["optic_Arco",nil,500],
                                                ["A3L_M4A3",nil,8000],
                                                ["A3L_M4mag",nil,650],
                                                ["A3L_M4Flashlight",nil,500],
												["A3L_CCO",nil,500],
												["A3L_RedDot",nil,500],
												["A3L_MP5",nil,5000],
												["A3L_MP5mag",nil,500],	
												["A3L_MP5Silencer",nil,3000],
                                                ["A3L_Glock17",nil,7600],
												["A3L_Glock17mag",nil,500],
												
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												["CG_BATON","Police Baton",100],
                                                ["CG_TELEBAT","Police TeleBat",100],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
      
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Heisen's Jihadi Shop",
                                        [
											["A3L_SA61",nil,45000],
											["A3L_SA61mag",nil,900],
											["A3L_UZI",nil,37250],
											["A3L_UZImag",nil,950],
											
											["A3L_AK47",nil,120000],
											["A3L_AK47mag",nil,2500],
											
											["A3L_AK47s",nil,135000],
											["A3L_AK47sgold",nil,175000],											
											["A3L_AK47smag",nil,2750],		

											["A3L_AKS74",nil,190000],
											["A3L_AK47sMag",nil,2750],
											
											["A3L_RedDot",nil,8500]
										]
                                ];
                        };
                };
        };
       
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["A3L_Glock17",nil,17600],
												["A3L_Glock17mag",nil,500],
												["RH_g19t",nil,18500],
                                                ["RH_17Rnd_9x19_g17",nil,1250],
												["A3L_M9",nil,17200],
												["A3L_M9mag",nil,400],
												["A3L_makarov",nil,14500],
												["A3L_makarovmag",nil,250],
												["A3L_1911",nil,18000],
												["A3L_1911mag",nil,600],
												["A3L_Taurus",nil,32500],
												["A3L_TaurusGold",nil,35000],
												["A3L_Taurusmag",nil,970],
												["RH_gsh18",nil,41500],
                                                ["RH_18Rnd_9x19_gsh",nil,1250]
												
                                        ]
                                ];
                        };
                };
        };
		
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Rifle Shop",
                                        [
                                                ["A3L_CZ550",nil,75000],
                                                ["A3L_CZ550mag",nil,50],
                                                ["A3L_CZ550Scope",nil,36000],
												
												["arifle_SDAR_F","Turtle Harpoon",30000],
												["20Rnd_556x45_UW_mag","Underwater magazine",1200]
                                        ]
                                ];
                        };
                };
        };		
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["A3L_Glock17",nil,17600],
												["A3L_Glock17mag",nil,500],
												
												["A3L_UZI",nil,37250],
												["A3L_UZImag",nil,950]												
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Altis General Store",
                        [
								["ItemMap",nil,69],
								["FirstAidKit",nil,250],
                                ["itemRadio",nil,900],
                                ["Binocular",nil,1250],
                                ["ItemGPS",nil,750],
                                ["ToolKit",nil,500],
                                ["NVGoggles_OPFOR",nil,7500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200]
                        ]
                ];
        };
};
