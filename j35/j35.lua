--
-- file prepared: 8 February 2025 20:14:03.182, using fd705a
--
--SFM_characteristics.lua (file 2 for assembly)

j35 = {

	Name = 'j35',

	DisplayName = _('j35'),
	ViewSettings = ViewSettings,
	Countries = { "Abkhazia","Australia","Austria","Belarus","Belgium","Brazil","Bulgaria","Canada","China",
			 "Croatia","Czech Republic","Denmark","Egypt","ESA","Finland","France","Georgia",
			 "German Empire","Germany","Greece","Hungary","Imperial Japan","India","Insurgents","Iran",
			 "Iraq","Israel","Italy","Japan","Kazakhstan","NASA","North Korea","Norway",
			 "Pakistan","Poland","Romania","Russia","Saudi Arabia","Serbia","Slovakia","South Korea",
			 "South Ossetia","Spain","Sweden","Switzerland","Syria","The Netherlands","Third Reich","Turkey","UK",
			 "Ukraine","USA","USAF Aggressors","USSR","Vietnam"},

	HumanCockpit = false,
	HumanCockpitPath = current_mod_path..'/Cockpit/',
	Picture = "j35.png",
	Rate = 50,
	Shape = "j35",

	shape_table_data =
	{
		{
			file = 'j35';
			life = 20;
			vis = 3;
			fire = { 300, 2};
			username = 'j35';
			index = WSTYPE_PLACEHOLDER;
		},
	},
	------------------------ -
	mapclasskey = "P0091000024",
	attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Multirole fighters", "Refuelable", "Datalink", "Link16"},
	Categories = {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},

	---------	General	Characteristics	---------

	--This is not an accurate flight model for this aircraft.  The values used in this file are not based on any technical, military or restricted content related to the aircraft, nor are they derived from real world operation or testing.
	--The values in this file are based on publicly available data (examples: airframe dimensions, weights, engine type/power, operating speeds and altitudes).  Thus, this will not provide an accurate representation in game of either actual real-world performance nor of the flight characteristics of this aircraft.
	--Values for the following were obtained from Wikipedia: the maximum speed of the aircraft, its climb rate and service ceiling as well as aircraft attributes such as engine thrust, weights, wing surface area and other aircraft dimensions.
	--Estimates for the following were obtained from Google AI search queries, or Google Gemini queries: sustained turn rate performance, operational g limit, stall speed, altitude at which maximum speed is attained, maximum speed at sea level.
	--Values for the engine table and for the aerodynamics table were refined by in-game testing, with the objective of permitting the user to fly the aircraft in DCS World as 'player' to the max velocity, and service ceiling corresponding to the aircraft as found on the sources disucssed above.

	length = 15.35,
	height = 3.89,
	wing_area = 49.2,
	wing_span = 9.42,
	wing_tip_pos = { -6.45, 0.8, 4.75},
	RCS = 4,											--(estimated as 0.0375*((height*length) + wing surface area)) )
	air_refuel_receptacle_pos = { 0, 0, 0},
	has_speedbrake = true,								-- default
	brakeshute_name = 4,								-- default
	is_tanker = false,									-- default
	tanker_type = 2,									-- default
	stores_number = 8,
	wing_type = 0,										-- default
	crew_size = 1,										-- default
	crew_size = 1,										-- default

	------- Weight & Fuel Characteristics -------
	M_empty = 7865,
	M_nominal = 11000,
	M_max = 11914,
	M_fuel_max = 2000,
	H_max = 20000,										-- (calculated from service_ceiling)
	CAS_min = 73,
	average_fuel_consumption = 1,						-- default

	----------_ AI Flight Parameters -----------
	V_opt = 544,
	V_take_off = 76,
	V_land = 73,								-- note: default calculation override for j35
	V_max_sea_level = 393,								-- note: default calculation override for j35
	V_max_h = 679,								-- note: default calculation override for j35
	Vy_max = 199,
	Mach_max = 2.301,
	Ny_min = -3,										-- default
	Ny_max = 7,											-- note: default level override for j35
	Ny_max_e = 7,										-- note: default level override for j35
	AOA_take_off = 0.16,								-- default
	bank_angle_max = 81.8,								-- note: default level override for j35
	range = 3000,										-- default
	flaps_maneuver = 1,									-- default

	-------- Suspension Characteristics -------
	and_gear_max = 1,									-- default
	nose_gear_pos = { 4.5, -1.05, 0},
	nose_gear_wheel_diameter = 0.5,						-- default
	nose_gear_amortizer_direct_stroke = 0.05,			-- default
	nose_gear_amortizer_reversal_stroke = -0.25,		-- default
	nose_gear_amortizer_normal_weight_stroke = -0.05,	-- default
	main_gear_pos = { -1.75, -1, 1.95},
	main_gear_wheel_diameter = 0.75,					-- default
	main_gear_amortizer_direct_stroke = 0.1,			-- default
	main_gear_amortizer_reversal_stroke = -0.275,		-- default
	main_gear_amortizer_normal_weight_stroke = -0.1,	-- default

	---------- Engine Characteristics ---------
	has_afteburner = true,
	thrust_sum_max = 5764.5,
	thrust_sum_ab = 7988.6,
	engines_count = 1,
	IR_emission_coeff = 0.05,							-- default
	IR_emission_coeff_ab = 0.05,						-- default

	--------- Sensors Characteristics ---------
	detection_range_max = 250,							-- default
	radar_can_see_ground = true,						-- default


---------------------------------------------------------------------------------------------------------------------------------------------

	crew_members =
	{
		[1] =
		{
			ejection_seat_name = 9,
			drop_canopy_name = "aircraft_canopy",
			canopy_pos = {4.5, -0.1, 0},
			canopy_ejection_dir = {0.0, 0.5, -0.5},
			pos = {4.5, -1.05, 0},
		}, --end of[1]
		--[2] =
		--{
			--ejection_seat_name = 9,
			--drop_canopy_name = "aircraft_canopy_2",
			--canopy_pos = {4.5, -0.1, 0},
			--canopy_ejection_dir = {0.0, 0.5, 0.5},
			--pos = {4.5, -1.05, 0},
			--canopy_arg = 421,
		--}, --end of[2]
	}, --end of crew_members

---------------------------------------------------------------------------------------------------------------------------------------------


	--------- Engine, nozzles and exhaust ---------

	engines_nozzles = {
		[1] =
		{
			pos = {-8, 1.1, 0},
			elevation = 1.1,
			diameter = 1.1,								-- default
			exhaust_length_ab = 8,						-- default
			exhaust_length_ab_K = 0.707,				-- default
			smokiness_level = 0.15,
			afterburner_circles_count = 7,				-- default
			afterburner_circles_pos = { 0.2, 0.8 },		-- default
			afterburner_circles_scale = 0.95,			-- default
		}, -- end of [1]
	}, -- end of engines_nozzles


---------------------------------------------------------------------------------------------------------------------------------------------


	Guns = {
		ADEN({ muzzle_pos = {3, 0.95, 2.75},_connector =  "Point_Gun_02",rates = {1000},effect_arg_number = 350,mixes = {{1,2,3}},azimuth_initial = 0.0,elevation_initial = 0,supply_position = {0.0,0.0,0.0}}),
		ADEN({ muzzle_pos = {3, 0.95, -2.75},_connector =  "Point_Gun_03",rates = {1000},effect_arg_number = 350,mixes = {{1,2,3}},azimuth_initial = 0.0,elevation_initial = 0,supply_position = {0.0,0.0,0.0}}),
	},


	Pylons = {
		pylon(1, 0, -3.5, 0.75, 3.25, --
			{
				use_full_connector_position = true, connector = "Pylon1", arg = 308, arg_value = 0,
			},
			{
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" }, --AIM-9P
			} 
		),
		pylon(2, 0, -3, 0.75, 2.7, --
			{
				use_full_connector_position = true, connector = "Pylon2", arg = 309, arg_value = 0,
			},
			{
				{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, --MK-81 
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, --MK-82 
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, --MK-83 
			} 
		),
		pylon(3, 0, 0.55, 0.75, 1.35, --
			{
				use_full_connector_position = true, connector = "Pylon3", arg = 310, arg_value = 0,
			},
			{
				{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, --MK-81 
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, --MK-82 
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, --MK-83 
				{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" }, --AIM-7M
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" }, --AIM-9P
			} 
		),
		pylon(4, 0, 0.55, 0.43, 0.28, --
			{
				use_full_connector_position = true, connector = "Pylon4", arg = 311, arg_value = 0,
			},
			{
				{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, --MK-81 
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, --MK-82 
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, --MK-83 
				{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" }, --AIM-7M
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" }, --AIM-9P
			} 
		),
		pylon(5, 0, 0.55, 0.43, -0.28, --
			{
				use_full_connector_position = true, connector = "Pylon5", arg = 312, arg_value = 0,
			},
			{
				{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, --MK-81 
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, --MK-82 
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, --MK-83 
				{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" }, --AIM-7M
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" }, --AIM-9P
			} 
		),
		pylon(6, 0, 0.55, 0.75, -1.35, --
			{
				use_full_connector_position = true, connector = "Pylon6", arg = 313, arg_value = 0,
			},
			{
				{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, --MK-81 
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, --MK-82 
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, --MK-83 
				{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" }, --AIM-7M
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" }, --AIM-9P
			} 
		),
		pylon(7, 0, -3, 0.75, -2.7, --
			{
				use_full_connector_position = true, connector = "Pylon7", arg = 314, arg_value = 0,
			},
			{
				{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, --MK-81 
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, --MK-82 
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, --MK-83 
			} 
		),
		pylon(8, 0, -3.5, 0.75, -3.25, --
			{
				use_full_connector_position = true, connector = "Pylon8", arg = 315, arg_value = 0,
			},
			{
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" }, --AIM-9P
			} 
		),
	},

---------------------------------------------------------------------------------------------------------------------------------------------

		 -- calibrate_countermeasures 

---------------------------------------------------------------------------------------------------------------------------------------------

	--Sensors 
	Sensors = {
		RADAR = "AN/APQ-153", --RADAR
		IRST = "OLS-27", --Infra type
	},


	fires_pos =
	{
		[1] = { -2, 0.8, 0.0},
		[2] = { -0.8, 0.8, 2.75},
		[3] = { -1.2, 0.8, -2.75},
		[4] = { 0.55, 0.8, 1.1875},
		[5] = { 0.55, 0.8, -1.1875},
		[6] = { 0.55, 0.8, 3.8},
		[7] = { 0.55, 0.8, -3.8},
		[8] = { -8, 1.1, 2.75},
		[9] = { -8, 1.1, -2.75},
		[10] = { -4, 0.8, 2.75},
		[11] = { -4, 0.8, -2.75},
	},	-- end of fires_pos

---------------------------------------------------------------------------------------------------------------------------------------------


--(file 3 for aessembly)

	--[[
	fires_pos =
	{
		[1] = 	{-1.594,	-0.064,		0},
		[2] = 	{-1.073,	0.319,		2.304},
		[3] = 	{-1.187,	0.338,		-4.678},
		[4] = 	{-0.82,		0.265,		2.774},
		[5] = 	{-0.82,		0.265,		-2.774},
		[6] = 	{-0.82,		0.255,		4.274},
		[7] = 	{-0.82,		0.255,		-4.274},
		[8] = 	{-5.889,	-0.257,		1.193},
		[9] = 	{-5.889,	-0.257,		-1.193},
		[10] = 	{-1.257,	0.283,		3.05},
		[11] = 	{-1.257,	0.283,		-3.05},
	}, -- end of fires_pos
	]]--

	--[[

	-- Countermeasures
	passivCounterm = {
		CMDS_Edit = true,
		SingleChargeTotal = 128,
		-- PPR-26
		chaff = {default = 64, increment = 3, chargeSz = 1},
		-- PPI-26
		flare = {default = 64, increment = 3, chargeSz = 1}
	},
	]]--

	attribute 		= { wsType_Air, wsType_Airplane, wsType_Fighter, Su_34,"Bombers", "Refuelable"},
	CanopyGeometry	=  makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_AVERAGE),
	
	--[[
	Sensors =
	{
		RADAR = "N-011M",
		OPTIC = "Su-34 FLIR",
		RWR   = "Abstract RWR"
	},
	]]--

	Tasks =
	{
		aircraft_task(AFAC),
		aircraft_task(SEAD),
		aircraft_task(AntishipStrike),
		aircraft_task(CAS),
		aircraft_task(CAP),
		aircraft_task(Intercept),
		aircraft_task(PinpointStrike),
		aircraft_task(GroundAttack),
		aircraft_task(RunwayAttack),
	},
	DefaultTask = aircraft_task(CAP),

	--SFM_aerodynamics.lua (file 4 for assembly)

	SFM_Data = {
		aerodynamics = --Cx = Cx_0 + Cy ^ 2 * B2 + Cy ^ 4 * B4
		{

			Cy0 = 0,
			Mzalfa = 4.355,					-- default
			Mzalfadt = 0.8,					-- default
			kjx = 3,						-- default
			kjz = 0.00125,					-- default
			Czbe = -0.016,					-- default
			cx_gear = 0.02,					-- default
			cx_flap = 0.08,					-- default
			cy_flap = 0.25,					-- default
			cx_brk = 0.1,					-- default

			table_data = {
				--M     Cx0     Cya     B       B4      Omxmax  Aldop   Cymax
				{0,		0.015,	0.0286,	0.184,	0.0774,	2.21,	11.7,	0.336,		},
				{0.1,	0.015,	0.0259,	0.184,	0.0774,	6.01,	13,	0.336,		},
				{0.2,	0.015,	0.0234,	0.184,	0.0774,	6.01,	14.3,	0.336,		},
				{0.3,	0.015,	0.027,	0.184,	0.0774,	6.01,	15.8,	0.336,		},
				{0.4,	0.015,	0.0306,	0.184,	0.0774,	6.01,	17.5,	0.536,		},
				{0.5,	0.015,	0.0676,	0.177,	0.117,	6.01,	17.5,	1.21,		},
				{0.6,	0.015,	0.0571,	0.162,	0.15,	6.01,	17.5,	1.02,		},
				{0.7,	0.015,	0.0429,	0.197,	0.325,	6.01,	17.5,	1,		},
				{0.8,	0.015,	0.03,	0.291,	1.01,	6.01,	17.5,	1,		},
				{0.9,	0.0213,	0.03,	0.284,	0.984,	2.29,	17.5,	1,		},
				{1,	0.035,	0.03,	0.277,	0.959,	2.04,	16.6,	0.951,		},
				{1.1,	0.0428,	0.03,	0.27,	0.935,	1.82,	15.8,	0.905,		},
				{1.2,	0.0387,	0.03,	0.263,	0.912,	1.63,	15.1,	0.861,		},
				{1.3,	0.035,	0.03,	0.256,	0.889,	1.45,	14.3,	0.819,		},
				{1.4,	0.0317,	0.03,	0.25,	0.867,	1.3,	13.6,	0.779,		},
				{1.5,	0.0287,	0.03,	0.244,	0.845,	1.16,	13,	0.741,		},
				{1.6,	0.026,	0.03,	0.238,	0.824,	1.03,	12.3,	0.705,		},
				{1.7,	0.0235,	0.03,	0.232,	0.804,	0.922,	11.7,	0.67,		},
				{1.8,	0.0213,	0.03,	0.226,	0.784,	0.823,	11.2,	0.638,		},
				{1.9,	0.0192,	0.03,	0.22,	0.764,	0.734,	10.6,	0.607,		},
				{2,	0.0174,	0.03,	0.215,	0.745,	0.655,	10.1,	0.577,		},
				{2.1,	0.0157,	0.03,	0.209,	0.726,	0.585,	9.6,	0.549,		},
				{2.2,	0.0142,	0.03,	0.204,	0.708,	0.522,	9.14,	0.522,		},
				{2.3,	0.0129,	0.03,	0.199,	0.69,	0.466,	8.69,	0.497,		},
				{2.4,	0.0117,	0.03,	0.99,	3.43,	0.416,	8.27,	0.472,		},
				{2.5,	0.0106,	0.03,	0.965,	3.35,	0.371,	7.86,	0.449,		},
				{2.6,	0.00955,	0.03,	0.941,	3.26,	0.331,	7.48,	0.427,		},
				{2.7,	0.00864,	0.03,	0.918,	3.18,	0.296,	7.11,	0.407,		},
			}, --end of table_data

		--This is not an accurate flight model for this aircraft.  The values used in this file are not based on any technical, military or restricted content related to the aircraft, nor are they derived from real world operation or testing.
		--The values in this file are based on publicly available data (examples: airframe dimensions, weights, engine type/power, operating speeds and altitudes).  Thus, this will not provide an accurate representation in game of either actual real-world performance nor of the flight characteristics of this aircraft.
		--Values for the following were obtained from Wikipedia: the maximum speed of the aircraft, its climb rate and service ceiling as well as aircraft attributes such as engine thrust, weights, wing surface area and other aircraft dimensions.
		--Estimates for the following were obtained from Google AI search queries, or Google Gemini queries: sustained turn rate performance, operational g limit, stall speed, altitude at which maximum speed is attained, maximum speed at sea level.
		--Values for the engine table and for the aerodynamics table were refined by in-game testing, with the objective of permitting the user to fly the aircraft in DCS World as 'player' to the max velocity, and service ceiling corresponding to the aircraft as found on the sources disucssed above.

		}, --end of aerodynamics
		engine = 
		{
			Nmg = 50,					-- default
			MinRUD = 0,					-- default
			MaxRUD = 1,					-- default
			MaksRUD  = 0.85,					-- default
			ForsRUD  = 0.91,					-- default
			typeng  = 1,
			hMaxEng	= 19,				-- default
			dcx_eng = 0.015,			-- default
			cemax  = 1.24,				-- default
			cefor  = 2.56,				-- default
			dpdh_m = 1000,					-- default
			dpdh_f = 2000,					-- default

			--[[			table_data = {
				--M 	Pmax	Pafb
				{0,	47352,	65707,		},
				{0.2,	47352,	65707,		},
				{0.4,	47352,	65707,		},
				{0.6,	47352,	65707,		},
				{0.8,	47352,	65707,		},
				{1,	47352,	65707,		},
				{1.2,	47352,	65707,		},
				{1.4,	47352,	65707,		},
				{1.6,	47352,	65707,		},
				{1.8,	47352,	65707,		},
				{2,	47352,	65707,		},
				{2.2,	47352,	65707,		},
			}, --end of table_data
			--]]

			table_data = {
				--M 	Pmax	Pafb
				{0.0,	0.0,	0.0,		},
				{ 3.25,	0.0,	0.0,		},
			}, --end of table_data


			--[[
				engine calibration worksheet (for in-game testing)
				alt     	vel		adj
				0 k ft		0.m		adj:+/-
				15 k ft		0.m		adj:+/-
				36 k ft		0.m		adj:+/-
				37 k ft		0.m		adj:+/-
				53 k ft		0.m		adj:+/-
				59 k ft		0.m		adj:+/-
				65 k ft		0.m		adj:+/-
				68 k ft		0.m		adj:+/-
			]]--

			extended = {

				thrust_max = {
					M = { 0.000000, 0.200000, 0.400000, 0.600000, 0.800000, 1.000000, 1.200000, 1.400000, 1.600000, 1.800000, 2.000000, 2.200000, }, 
					H = { 0, 4571, 10972, 11521, 16204, 18229, 19850, 20761 }, 
					thrust = {
						{ 28427,  28427,  28427,  28427,  28427,  28427,  28427,  28427,  28427,  28427,  28427,  28427  }, 
						{ 47365,  47365,  47365,  47365,  47365,  47365,  47365,  47365,  47365,  47365,  47365,  47365  }, 
						{ 63127,  63127,  63127,  63127,  63127,  63127,  63127,  63127,  63127,  63127,  63127,  63127  }, 
						{ 54830,  54830,  54830,  54830,  54830,  54830,  54830,  54830,  54830,  54830,  54830,  54830  }, 
						{ 25431,  25431,  25431,  25431,  25431,  25431,  25431,  25431,  25431,  25431,  25431,  25431  }, 
						{ 21193,  21193,  21193,  21193,  21193,  21193,  21193,  21193,  21193,  21193,  21193,  21193  }, 
						{ 9330,   9330,   9330,   9330,   9330,   9330,   9330,   9330,   9330,   9330,   9330,   9330   }, 
						{ 1130,   1130,   1130,   1130,   1130,   1130,   1130,   1130,   1130,   1130,   1130,   1130   }, 
					}, -- thrust = {

				}, --thrust_max = {

				thrust_afterburner  = {
					M = { 0.000000, 0.200000, 0.400000, 0.600000, 0.800000, 1.000000, 1.200000, 1.400000, 1.600000, 1.800000, 2.000000, 2.200000, }, 
					H = { 0, 4571, 10972, 11521, 16204, 18229, 19850, 20761 }, 
					thrust = {
						{ 39394,  39394,  39394,  39394,  39394,  39394,  39394,  39394,  39394,  39394,  39394,  39394  }, 
						{ 65639,  65639,  65639,  65639,  65639,  65639,  65639,  65639,  65639,  65639,  65639,  65639  }, 
						{ 87483,  87483,  87483,  87483,  87483,  87483,  87483,  87483,  87483,  87483,  87483,  87483  }, 
						{ 75986,  75986,  75986,  75986,  75986,  75986,  75986,  75986,  75986,  75986,  75986,  75986  }, 
						{ 35244,  35244,  35244,  35244,  35244,  35244,  35244,  35244,  35244,  35244,  35244,  35244  }, 
						{ 29370,  29370,  29370,  29370,  29370,  29370,  29370,  29370,  29370,  29370,  29370,  29370  }, 
						{ 12930,  12930,  12930,  12930,  12930,  12930,  12930,  12930,  12930,  12930,  12930,  12930  }, 
						{ 1566,   1566,   1566,   1566,   1566,   1566,   1566,   1566,   1566,   1566,   1566,   1566   }, 
					}, -- thrust = {

				}, --thrust_afterburner = {

			}, -- extended = {

		--This is not an accurate flight model for this aircraft.  The values used in this file are not based on any technical, military or restricted content related to the aircraft, nor are they derived from real world operation or testing.
		--The values in this file are based on publicly available data (examples: airframe dimensions, weights, engine type/power, operating speeds and altitudes).  Thus, this will not provide an accurate representation in game of either actual real-world performance nor of the flight characteristics of this aircraft.
		--Values for the following were obtained from Wikipedia: the maximum speed of the aircraft, its climb rate and service ceiling as well as aircraft attributes such as engine thrust, weights, wing surface area and other aircraft dimensions.
		--Estimates for the following were obtained from Google AI search queries, or Google Gemini queries: sustained turn rate performance, operational g limit, stall speed, altitude at which maximum speed is attained, maximum speed at sea level.
		--Values for the engine table and for the aerodynamics table were refined by in-game testing, with the objective of permitting the user to fly the aircraft in DCS World as 'player' to the max velocity, and service ceiling corresponding to the aircraft as found on the sources disucssed above.


		}, --end of engine

	},

	DamageParts =
	{
		[1] = "j35-collision",
	},

	-- (file 5 for aessembly)

	-- new
	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
		[0]		= {critical_damage = 5, args = {146}},
		[3]		= {critical_damage = 20,args = {65}}  ,
		[4]		= {critical_damage = 20, args = {150}},
		[5]		= {critical_damage = 20, args = {147}},
		[7]		= {critical_damage = 4, args = {249}} ,
		[9]		= {critical_damage = 3, args = {154}},
		[10]	= {critical_damage = 3, args = {153}},
		[11]	= {critical_damage = 3, args = {167}},
		[12]	= {critical_damage = 3, args = {161}},
		[15]	= {critical_damage = 5, args = {267}},
		[16]	= {critical_damage = 5, args = {266}},
		[23]	= {critical_damage = 8, args = {223}, deps_cells = {25}},
		[24]	= {critical_damage = 8, args = {213}, deps_cells = {26, 60}},
		[25]	= {critical_damage = 3, args = {226}},
		[26]	= {critical_damage = 3, args = {216}},
		[29]	= {critical_damage = 9, args = {224}, deps_cells = {31, 25, 23}},
		[30]	= {critical_damage = 9, args = {214}, deps_cells = {32, 26, 24, 60}},
		[31]	= {critical_damage = 4, args = {229}},
		[32]	= {critical_damage = 4, args = {219}},
		[35]	= {critical_damage = 10, args = {225}, deps_cells = {29, 31, 25, 23}},
		[36]	= {critical_damage = 10, args = {215}, deps_cells = {30, 32, 26, 24, 60}} ,
		[37]	= {critical_damage = 4, args = {227}},
		[38]	= {critical_damage = 4, args = {217}},
		[39]	= {critical_damage = 7,	args = {244}, deps_cells = {53}},
		[40]	= {critical_damage = 7, args = {241}, deps_cells = {54}},
		[45]	= {critical_damage = 9, args = {235}, deps_cells = {39, 51, 53}},
		[46]	= {critical_damage = 9, args = {233}, deps_cells = {40, 52, 54}},
		[51]	= {critical_damage = 3, args = {239}},
		[52]	= {critical_damage = 3, args = {237}},
		[53]	= {critical_damage = 3, args = {248}},
		[54]	= {critical_damage = 3, args = {247}},
		[55]	= {critical_damage = 20, args = {81}, deps_cells = {39, 40, 45, 46, 51, 52, 53, 54}},
		[59]	= {critical_damage = 5, args = {148}},
		[60]	= {critical_damage = 1, args = {144}},

		[83]	= {critical_damage = 3, args = {134}} ,-- nose wheel
		[84]	= {critical_damage = 3, args = {136}}, -- left wheel
		[85]	= {critical_damage = 3, args = {135}} ,-- right wheel
	},


	-- solve triangle to have B_end == C_end with given A
	-- B_start assumed to be A_start
	-- C_start assumed to be A_end
	
	SolveTriangles = 
	{
		-- left gear post kinematics 
		{
			A_start   = "bracing_centr004",
			A_end     = "bracing_centr003",
			B_end     = "bracing_004",
			B_control = 484,
			C_end	  = "bracing_003",
			C_control = 483,
			B_scale   =  1/math.rad(46);
			C_scale   =  1/math.rad(25);
		},
		-- right gear post kinematics 
		{
			A_start   = "bracing_centr006",
			A_end     = "bracing_centr005",
			B_end     = "bracing_006",
			B_control = 486,
			C_end	  = "bracing_005",
			C_control = 485,
			B_scale   =  1/math.rad(46);
			C_scale   =  1/math.rad(25);
		},
	},  --SolveTriangles


}



--SFM_add.lua (file 6 for assembly)

add_aircraft(j35)


