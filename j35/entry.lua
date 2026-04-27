--
-- file prepared: 8 February 2025 20:14:03.181, using fd705a
--
self_ID = "j35"
declare_plugin(self_ID,
{
	displayName = _("j35"),
	developerName = _("Half Science, the 'clay pigeon' series"),  --see artistic credits in the readme.txt

	image = "FC.bmp",
	installed = true,
	dirName = current_mod_path,
	fileMenuName = _("j35"),

	version = " ",
	state = "installed",
	info = _("The Saab 35 Draken is a Swedish fighter-interceptor which entered service with frontline squadrons of the Swedish Air Force on 8 March 1960. Development of the Saab 35 Draken started in 1948 as a replacement for Saab 29 Tunnan day fighter and Saab 32B Lansen all-weather fighter. The number '35' comes from the aircraft's Swedish Air Force-designation 'flygplan 35' (fpl 35) or 'aeroplane 35', with the 'J' prefix ('jaktflygplan' pursuit-aircraft Swedish for fighter aircraft) to indicate its intended role. Though intended as an interceptor, it was considered to be a capable dogfighter for the era. By the mid-1980s, the SAF's Drakens had largely been replaced by the JA 37 Viggen fighter, and later to be followed by the JAS 39 Gripen fighter. (source: https://en.wikipedia.org/wiki/Saab_35_Draken#Specifications_(J_35F_Draken) "),

	update_id = "j35",

	Skins =
	{
		{
			name = _("j35"),
			dir = "Theme"
		},
	},
	Missions =
	{
		{
			name = _("j35"),
			dir = "Missions",
		},
	},
	LogBook =
	{
		{
			name = _("j35"),
			type = "j35",
		},
	},
	InputProfiles =
	{
		["j35"] = current_mod_path .. '/Input/j35',
	},
})
----------------------------------------------------------------------------------------
mount_vfs_texture_path(current_mod_path.."/Textures")
mount_vfs_model_path(current_mod_path.."/Shapes")
dofile(current_mod_path.."/Views.lua")
dofile(current_mod_path.."/weapons.lua")
make_view_settings('j35', ViewSettings, SnapViews)
make_flyable('j35', current_mod_path..'/Cockpit/Scripts/', { nil, old = 54 }, current_mod_path..'/comm.lua')
dofile(current_mod_path..'/j35.lua')
------------------------------------------------------------------------------------ -
plugin_done()

