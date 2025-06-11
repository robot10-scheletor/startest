print("This file will be run at load time!")

local MP = minetest.get_modpath("startest")

dofile(MP.."/craftitems.lua")

dofile(MP.."/synthesizer.lua")

dofile(MP.."/nodes.lua")

dofile(MP.."/decorations.lua")

dofile(MP.."/weapons.lua")

dofile(MP.."/craftings.lua")

dofile(MP.."/extractor.lua")

dofile(MP.."/tools.lua")

if minetest.get_modpath("3d_armor") then
	dofile(MP.."/armor.lua")
end