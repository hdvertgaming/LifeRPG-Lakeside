#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",20000],
			["A3L_FordKaBlue",30000],
			["A3L_FordKaRed",30000],
			["A3L_FordKaBlack",30000],
			["A3L_FordKaWhite",30000],
			["A3L_FordKaGrey",30000],
			["DAR_FusionCiv",50000],
			["DAR_FusionCivBlue",50000],
			["IVORY_R8",200000],
			["IVORY_R8SPYDER",200000],
			["IVORY_REV",250000]

		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
		
			["IVORY_PRIUS",10000],
			["cg_ambulanceexpansion",5000],
			["DAR_ExplorerPolice",2000],
			["A3L_AmberLamps",18000],
			["A3L_CVPILBFD",19000],
			["A3L_Laddertruck",20000],
			["DAR_TahoeEMS",30000],
			["AM_Holden_EMS",20000],
			["sfp_wheelchair",30000]
		];
	};
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",45000],
			["IVORY_BELL512_RESCUE",85000],
			["C_Heli_Light_01_civil_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["EMS_Orca",75000],
			["EMS_Orca2",75000],
			["O_Heli_Transport_04_medevac_F",150000]
		];
	};
	case "exo_car":
	{
		_return = [
			["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			["Jonzie_Mini_Cooper_R_spec",80000],
			["BMW_M5Black",95000],
			["BMW_M5Blue",95000],
			["BMW_M5Red",95000],
			["BMW_M5White",95000],
			["CG_Lamborghini_Aventador_Black",4000000],
			["CG_Lamborghini_Aventador_White",4000000],
			["CG_Lamborghini_Aventador_Green",4000000],
			["CG_Lamborghini_Aventador_Blue",4000000],
			["CG_Lamborghini_Aventador_Red",4000000],
			["CG_Lamborghini_Aventador_Purple",4000000],
			["Jonzie_Mini_Cooper",10000],
			["AM_Holden_White",785000],
			["AM_Holden_Black",785000],
			["AM_Holden_Green",785000],
			["AM_Holden_DarkGreen",785000],
			["AM_Holden_OffGreen",785000],
			["AM_Holden_blue",785000],
			["AM_Holden_OffYellow",785000],
			["AM_Holden_Pink",785000],
			["AM_Holden_Purple",785000],
			["AM_Holden_Yellow",785000],
			["DAR_M3CivBlack",75000],
			["DAR_M3CivGrey",75000],
			["DAR_M3CivWhite",75000],
			["A3L_EvoXDarkGreen",70000],
			["A3L_EvoOffGreen",70000],
			["A3L_EvoXOffYellow",70000],
			["A3L_EvoXYellow",70000],
			["A3L_EvoXPink",70000],
			["A3L_EvoXPurple",70000],
			["A3L_EvoXWhite",70000],
			["A3L_EvoXBlack",70000],
			["A3L_EvoXRed",70000],
			["A3L_RX7_Blue",120000],
			["A3L_RX7_Red",120000],
			["A3L_RX7_White",120000],
			["A3L_RX7_Black",120000],
			["IVORY_PRIUS",20000],
			["IVORY_R8",200000],
			["IVORY_R8SPYDER",200000],
			["IVORY_REV",250000],
			["A3L_Atom",2000000],
			["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],
			["A3L_VolvoS60RBlack",50000],
			["A3L_VolvoS60Rred",50000],
			["max_H3_vegeta",180000],
			["max_H3_yellow",180000],
			["max_H3",180000],
			["max_H3_black",180000],
			["wirk_h3_limo",250000],
			["AM_Holden_RBlue",2985000],			
			["AM_Holden_RRed",2985000],
			["AM_Holden_RWhite",2985000],
			["AM_Holden_RBlack",1985000],
			["S_Skyline_Red",95000],
			["S_Skyline_Blue",95000],
			["S_Skyline_Black",95000],
			["S_Skyline_Yellow",95000],
			["S_Skyline_Purple",95000],
			["S_Skyline_White",95000],
			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],
			["A3L_Ferrari458black",1530000],
			["A3L_Ferrari458white",1530000],
			["A3L_Ferrari458blue",1530000],
			["S_PorscheRS_Black",450000],
			["S_PorscheRS_Yellow",450000],
			["S_PorscheRS_White",450000],
			["S_McLarenP1_Black",1850000],
			["S_McLarenP1_Blue",1850000],
			["S_McLarenP1_Orange",1850000],
			["S_McLarenP1_White",1850000],
			["S_McLarenP1_Yellow",1850000],
			["S_McLarenP1_Silver",1850000],
			["A3L_Veyron",3500000],
			["A3L_Veyron_red",3500000],
			["A3L_Veyron_black",3500000],
			["A3L_Veyron_white",3500000],
			["A3L_Veyron_orange",1500000],
			["Nhz_audia8limo",100000],
			["S_Vantage_Purple",100000],
			["S_Vantage_Yellow",100000],
			["S_Vantage_Blue",100000],
			["S_Vantage_Red",100000],
			["A3L_Ferrari458blue",2200000],
			["A3L_Ferrari458black",2200000],
			["A3L_Ferrari458red",2200000],
			["S_Rangerover_White",150000],
			["S_Rangerover_Orange",150000],
			["S_Rangerover_Grey",150000],
			["S_Rangerover_Purple",150000],
			["S_Rangerover_Green",150000],
			["S_Rangerover_Blue",150000],
			["S_Rangerover_Black",100000],
			["S_Rangerover_Red",100000]

		];
	};

	case "chev_car":
	{
		_return = [
			["DAR_TahoeCivSilver",140000],
			["DAR_TahoeCivBlue",140000],
			["DAR_TahoeCivRed",140000],
			["DAR_TahoeCivBlack",140000],
			["A3L_SuburbanWhite",290000],
			["A3L_SuburbanBlue",290000],
			["A3L_SuburbanRed",290000],
			["A3L_SuburbanBlack",290000],
			["A3L_SuburbanGrey",290000],
			["A3L_SuburbanOrange",290000],
			["D_Cobalt_Blue",30000],
			["D_Cobalt_DarkRed",30000],
			["D_Cobalt_Granite",30000],
			["D_Cobalt_Red",30000],
			["D_Cobalt_White",30000],
			["D_Cobalt_Yellow",30000],
			["DAR_ImpalaCivA",30000],
			["DAR_ImpalaCivB",30000],
			["DAR_ImpalaCivD",30000],
			["DAR_ImpalaCiv",30000],
			["DAR_ImpalaCivE",30000],
			["DAR_ImpalaCivG",30000],
			["DAR_ImpalaCivF",30000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_CVWhite",60000],
			["A3L_CVBlack",60000],
			["A3L_CVGrey",60000],
			["A3L_CVRed",60000],
			["A3L_CVPink",60000],
			["A3L_CVBlue",60000],
			["A3L_FordKaBlue",30000],
			["A3L_FordKaRed",30000],
			["A3L_FordKaBlack",30000],
			["A3L_FordKaWhite",30000],
			["A3L_FordKaGrey",30000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",90000],
			["A3L_TaurusBlue",90000],
			["A3L_TaurusRed",90000],
			["DAR_FusionCivBlack",30000],
			["DAR_FusionCivBlue",30000],
			["DAR_FusionCivRed",30000],
			["DAR_FusionCiv",30000],
			["A3L_TaurusWhite",90000]

		];
	};
	case "dodge_car":
	{
		_return =
		[
			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["A3L_Charger",110000],
			["A3L_ChargerBlack",110000],
			["A3L_ChargerBlue",110000],
			["A3L_ChargerWhite",110000],
			["A3L_ChargerRed",110000],
			["AM_2015C_Black",210000],
			["AM_2015C_blue",210000],
			["AM_2015C_white",210000],

			["Jonzie_Viper",450000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["Jonzie_Mini_Cooper",10000],
			["Jonzie_Mini_Cooper_R_spec",50000],
			["B_Quadbike_01_F",5000],
			["A3L_VolvoS60RBlack",35000],
			["A3L_Escort",12000],
			["A3L_EscortTaxi",12000],
			["A3L_EscortBlack",12000],
			["A3L_EscortBlue",12000],
			["A3L_EscortWhite",12000],
			["A3L_EscortPink",12000],
			["critgamin_contown_civ",18000],
			["critgamin_contown_bleu",18000],
			["critgamin_contown_noir",18000],
			["critgamin_contown_bleufonce",18000],
			["critgamin_contown_rouge",18000],
			["critgamin_contown_jaune",18000],
			["critgamin_contown_rose",18000],
			["critgamin_contown_grise",18000],
			["critgamin_contown_violet",18000],
			["critgamin_contown_jaune",18000],
			["critgamin_contown_orange",18000],			
			["critgamin_contown_vert",18000],
			["critgamin_vangmcc_civ",18000],
			["critgamin_vangmcc_civ_noir",18000],
			["critgamin_vangmcc_civ_bleufonce",18000],
			["critgamin_vangmcc_civ_bleu",18000],
			["critgamin_vangmcc_civ_vert",18000],
			["critgamin_vangmcc_civ_rouge",18000],
			["critgamin_vangmcc_civ_jaune",18000],
			["critgamin_vangmcc_civ_rose",18000],
			["critgamin_vangmcc_civ_grise",18000],
			["critgamin_vangmcc_civ_violet",18000],
			["critgamin_vangmcc_civ_orange",18000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["DAR_H1A",500000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],
			["A3L_VolksWagenGolfGTired",36000],
			["A3L_VolksWagenGolfGTiblack",36000],
			["A3L_VolksWagenGolfGTiblue",36000],
			["A3L_VolksWagenGolfGTiwhite",36000],
			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000]
		];
	};
	case "civ_motorbike":
	{
		_return =
		[


			["cl3_chopper_gold",95000],
			["cl3_chopper_green",95000],
			["cl3_chopper_red",95000],
			["cl3_chopper_blue",95000],
			["cl3_chopper_silver",95000],

			["tcg_hrly",25000],
			["tcg_hrly_white",25000],	
			["tcg_hrly_red",25000],
			["tcg_hrly_metal",25000],
			["tcg_hrly_blue",25000],
			["tcg_hrly_limited",45000],
			["tcg_hrly_demon",45000],
			["tcg_hrly_coco",45000],
			["tcg_hrly_orig1",45000],
			["tcg_hrly_orig2",45000],
			["tcg_hrly_skeleton",55000],
			["tcg_hrly_gay",65000],

			["cl3_enduro_aqua",55000],
			["cl3_xr_1000_aqua",155000],

			["cl3_enduro_babyblue",55000],
			["cl3_xr_1000_babyblue",155000],

			["cl3_enduro_babypink",55000],
			["cl3_xr_1000_babypink",155000],

			["cl3_enduro_black",55000],
			["cl3_xr_1000_black",155000],

			["cl3_enduro_blue",55000],
			["cl3_xr_1000_blue",155000],

			["cl3_enduro_burgundy",55000],
			["cl3_xr_1000_burgundy",155000],

			["cl3_enduro_cardinal",55000],
			["cl3_xr_1000_cardinal",155000],

			["cl3_enduro_dark_green",55000],
			["cl3_xr_1000_dark_green",155000],

			["cl3_enduro_flame",55000],
			["cl3_xr_1000_flame",155000],

			["cl3_enduro_flame1",55000],
			["cl3_xr_1000_flame1",155000],

			["cl3_enduro_flame2",55000],
			["cl3_xr_1000_flame2",155000],

			["cl3_enduro_gold",55000],
			["cl3_xr_1000_gold",155000],

			["cl3_enduro_green",55000],
			["cl3_xr_1000_green",155000],

			["cl3_enduro_grey",55000],
			["cl3_xr_1000_grey",155000],

			["cl3_enduro_lavender",55000],
			["cl3_xr_1000_lavender",155000],

			["cl3_enduro_light_blue",55000],
			["cl3_xr_1000_light_blue",155000],

			["cl3_enduro_light_yellow",55000],
			["cl3_xr_1000_light_yellow",155000],

			["cl3_enduro_lime",55000],
			["cl3_xr_1000_lime",155000],

			["cl3_enduro_marina_blue",55000],
			["cl3_xr_1000_marina_blue",155000],

			["cl3_enduro_navy_blue",55000],
			["cl3_xr_1000_navy_blue",155000],

			["cl3_enduro_orange",55000],
			["cl3_xr_1000_orange",155000],

			["cl3_enduro_purple",55000],
			["cl3_xr_1000_purple",155000],

			["cl3_enduro_red",55000],
			["cl3_xr_1000_red",155000],

			["cl3_enduro_sand",55000],
			["cl3_xr_1000_sand",155000],

			["cl3_enduro_silver",55000],
			["cl3_xr_1000_silver",155000],

			["cl3_enduro_white",55000],
			["cl3_xr_1000_white",155000],

			["cl3_enduro_yellow",55000],
			["cl3_xr_1000_yellow",155000]
		];
	};


	case "civ_truck":
	{
		_return =
		[

	        ["cl3_mackr_del_blue",520000],
			["cl3_mackr_del_american",520000],
			["cl3_mackr_del_black",520000],
			["cl3_mackr_del_black_gold",520000],
			["cl3_mackr_del_black_white",520000],
			["cl3_mackr_del_green_white",520000],
			["cl3_mackr_del_red_white",520000],
			["A3L_F350Black",65000],
			["A3L_F350Blue",65000],
			["A3L_F350Red",65000],
			["A3L_F350White",65000],
			["C_Van_01_fuel_F",70000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",75000],
			["A3L_Bus",130000],
			["C_Van_01_box_F",100000],
			["C_Van_01_transport_F",85000],
			["A3L_SchoolBus",200000],
			["A3L_Towtruck",40000],
			["A3L_Hyster60",200000],
			["wirk_h3_limo",1130000],
			["Nhz_audia8limo",2130000],
			["A3L_Towtruck",40000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["I_G_Van_01_fuel_F",140000],
			["B_Heli_Light_01_F",700000],
			["B_G_Offroad_01_F",165000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["IVORY_PRIUS",10000],
			["DAR_CVPIPolice",20000],
			["DAR_CVPISlick",20000],
			["DAR_ImpalaPolice",20000],
			["DAR_TaurusPolice",20000],
			["DAR_ChargerPolice",20000],
			["DAR_TahoePoliceSlick",20000],
			
			["cg_cvpitrooper",20000],
			["cg_trooperevo",20000],
			["cg_taurustrooper",20000],
			["charger_st",20000],
			
			["A3L_CVPIFPBCSO",20000],
			["A3L_CVPIFPBLBCSO",20000],
			["A3L_TaurusFPBCSO",20000],
			["A3L_TaurusFPBLBCSO",20000],
			
			["A3L_TaurusUCBlack",20000],
			["A3L_TaurusUCWhite",20000],
			["A3L_TaurusUCBlue",20000],
			["A3L_TaurusUCRed",20000],
			
  			["A3L_TaurusPD1",20000],
		    ["A3L_TaurusPD2",20000],
			["Jonzie_96_Impala_Unmarked",20000],
			["A3L_CVPIUCBlue",20000],
			["DAR_TahoePoliceDet",20000],
			["cg_h2_sert",40000],
			
			["AM_Holden_Police",20000],
			["DAR_ExplorerPoliceStealth",20000],
			["charger_umb",20000],
			["charger_umw",20000],
			["IVORY_REV",100000],
			["A3L_jailBus",50000]
			
		];
	};
	case "civ_air":
	{
		_return =
		[
			["IVORY_T6A_1",300000],
			["bwi_a3_t6a_6",350000],
			["bwi_a3_t6a_nta",350000],
			["bwi_a3_t6a_7",350000],
			["bwi_a3_t6a_9",350000],
			["bwi_a3_t6a_4",350000],
			["C_Heli_Light_01_civil_F",300000],
			["O_Heli_Light_02_unarmed_F",750000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["GNT_C185",1000000],
			["IVORY_CRJ200_1",3000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",25000],
			["B_Heli_Light_01_F",25000],
			["C_Heli_Light_01_civil_F",25000],
			["O_Heli_Light_02_unarmed_F",25000],
			["IVORY_BELL512_POLICE",25000],
			["I_Heli_Transport_02_F",20000],
			["I_Heli_light_03_unarmed_F",20000],
			["EC635_Unarmed",35000],
			["EC635_SAR",35000],
			["NH90",35000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",25000],
			["B_Heli_Light_01_F",25000],
			["C_Heli_Light_01_civil_F",25000],
			["O_Heli_Light_02_unarmed_F",25000],
			["IVORY_BELL512_POLICE",25000],
			["I_Heli_Transport_02_F",20000],
			["I_Heli_light_03_unarmed_F",20000],
			["EC635_Unarmed",35000],
			["EC635_SAR",35000],
			["NH90",35000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000]
		];
	};
};

_return;

