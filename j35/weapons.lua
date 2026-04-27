--
-- file prepared: 8 February 2025 20:14:03.216, using fd705a
--
--Ammunition ADEN, adapted from M_39
local m39_smoke_scale   = 1.0;
local m39_smoke_opacity = 0.3;

--
-- ADEN round 1 (30)
--
declare_weapon({category = CAT_SHELLS,name =   "M39_30_HEI",
  user_name		= _("M39_30_HEI_A"),

   model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.110,
  life_time      = 31.0,
  caliber        = 30.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.01,
  tracer_off     = -100,
  scale_tracer   = 0,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,

})

--
-- ADEN round 2 (30)
--
declare_weapon({category = CAT_SHELLS,name =   "M39_30_HEI_T",
  user_name		= _("M39_30_HEI_TA"),
  model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.110,
  life_time      = 31.0,
  caliber        = 30.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.07,
  tracer_off     = 3,
  scale_tracer   = 1,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,

})

--
-- ADEN round 2 (30)
--
declare_weapon({category = CAT_SHELLS,name =   "M39_30_API",
  user_name		= _("M39_30_API"),

  model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.000,
  AP_cap_caliber = 20.0,
  life_time      = 31.0,
  caliber        = 30.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.01,
  tracer_off     = -100,
  scale_tracer   = 0,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,

})

--
-- ADEN cannon (30)
--
function ADEN(tbl)

	tbl.category = CAT_GUN_MOUNT 
	tbl.name 	 = "ADEN"
	tbl.supply 	 =
	{
		shells = {"M39_30_HEI","M39_30_HEI_T","M39_30_API"},

		mixes  = {{1,1,3,1,2}},
		count  = 600,		--600 rounds for Javelin
	}
	if tbl.mixes then 
	   tbl.supply.mixes =  tbl.mixes
	   tbl.mixes	    = nil
	end
	tbl.gun = 
	{
		max_burst_length = 25,
		rates 			 = {1400},		--ADEN	
		recoil_coeff 	 = 1,
		barrels_count 	 = 1,
	}
	if tbl.rates then 
	   tbl.gun.rates    =  tbl.rates
	   tbl.rates	    = nil
	end	
	tbl.ejector_pos 			= tbl.ejector_pos or {-0.4, -1.2, 0.18}
	tbl.ejector_dir 			= {0,-1,0}
	tbl.supply_position  		= tbl.supply_position   or {0,  0.3, -0.3}
	tbl.aft_gun_mount 			= false
	tbl.effective_fire_distance = 1800		--1500 M_39
	tbl.drop_cartridge 			= 0
	tbl.muzzle_pos				= tbl.muzzle_pos 		 or  {0,0,0} -- all position from connector
	tbl.muzzle_pos_connector	= tbl.muzzle_pos_connector 		 or  "Gun_point" -- all position from connector
	tbl.azimuth_initial 		= tbl.azimuth_initial    or 0   
	tbl.elevation_initial 		= tbl.elevation_initial  or 0   
	if  tbl.effects == nil then
		tbl.effects = {{ name = "FireEffect"     , arg 		 = tbl.effect_arg_number or 436 },
					   { name = "HeatEffectExt"  , shot_heat = 7.823, barrel_k = 0.462 * 2.7, body_k = 0.462 * 14.3 },
					   { name = "SmokeEffect"}}
	end
	return declare_weapon(tbl)
end

--
--	note: the above is modelled after the example for the M_39 cannon as found in Scripts\Database\Weapons\aircraft_gun_mounts.lua, and
--  the examples for M39_20_HEI, M39_20_HEI_T, and M39_20_API as found in Scripts\Database\Weapons\shell_table.lua
-- 