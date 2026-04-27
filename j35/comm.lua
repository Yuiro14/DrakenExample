--
-- file prepared: 8 February 2025 20:14:03.128, using fd705a
--
local parameters = {
	fighter = false,
	radar = false,
	ECM = true,
	refueling = false
}
return utils.verifyChunk(utils.loadfileIn('Scripts/UI/RadioCommandDialogPanel/Config/LockOnAirplane.lua', getfenv()))(parameters)