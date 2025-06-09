minetest.register_node("startest:dense_space_crystal_ore", {
    description = "Dense Space Crystal Ore",
    tiles = {"dense_space_crystal_ore.png"},
    groups = {cracky=1, stone=1},
    drop = "startest:dense_space_crystal 2"
})

minetest.register_node("startest:space_crystal_ore", {
    description = "Space Crystal Ore",
    tiles = {"space_crystal_ore.png"},
    groups = {cracky=1, stone=1},
    drop = "startest:space_crystal 2"
})

minetest.register_node("startest:space_crystal_spike", {
	description ="Space Crystal Spike",
	drawtype = "plantlike",
	visual_scale = 1.69,
	tiles = {"space_crystal_spike.png"},
	inventory_image = "space_crystal_spike.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {cracky = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
    drop = "startest:space_crystal 1"
})

minetest.register_node("startest:space_crystal_single_spike", {
	description ="Space Crystal Single Spike",
	drawtype = "plantlike",
	visual_scale = 1.4,
	tiles = {"space_crystal_spike2.png"},
	inventory_image = "space_crystal_spike2.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {cracky = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
    drop = "startest:space_crystal 1"
})

minetest.register_node("startest:space_crystal_pointed_spike", {
	description ="Space Crystal Pointed Spike",
	drawtype = "plantlike",
	visual_scale = 1.4,
	tiles = {"space_crystal_spike3.png"},
	inventory_image = "space_crystal_spike3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {cracky = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
    drop = "startest:space_crystal 1"
})

minetest.register_node("startest:dense_space_crystal_spike", {
	description ="Dense Space Crystal Spike",
	drawtype = "plantlike",
	visual_scale = 1.69,
	tiles = {"dense_space_crystal_spike.png"},
	inventory_image = "dense_space_crystal_spike.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {cracky = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
    drop = "startest:dense_space_crystal 1"
})

minetest.register_node("startest:dense_space_crystal_single_spike", {
	description ="Dense Space Crystal Single Spike",
	drawtype = "plantlike",
	visual_scale = 1.4,
	tiles = {"dense_space_crystal_spike2.png"},
	inventory_image = "dense_space_crystal_spike2.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {cracky = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
    drop = "startest:dense_space_crystal 1"
})

minetest.register_node("startest:dense_space_crystal_pointed_spike", {
	description ="Dense Space Crystal Pointed Spike",
	drawtype = "plantlike",
	visual_scale = 1.4,
	tiles = {"dense_space_crystal_spike3.png"},
	inventory_image = "dense_space_crystal_spike3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {cracky = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
    drop = "startest:dense_space_crystal 1"
})

minetest.register_node("startest:cracked_stone", {
    description = "Cracked Stone",
    tiles = {"cracked_stone.png", "default_stone.png", "default_stone.png", "default_stone.png", "default_stone.png", "default_stone.png"},
    groups = {cracky=1, stone=1},
    drop = "default:cobble"
})

minetest.register_node("startest:monster_block", {
    description = "Monster Block",
    tiles = {"monster_block.png"},
    groups = {crumbly=1, stone=1},
    drop = "startest:monster_block"
})

minetest.register_node("startest:reinforced_steel", {
    description = "Reinforced Steel",
    tiles = {"reinforced_steel.png"},
    groups = {cracky=1, stone=1},
    drop = "startest:reinforced_steel"
})

minetest.register_node("startest:reinforced_glass", {
    drawtype = "glasslike_framed_optional",
    description = "Reinforced Glass",
    tiles = {"reinforced_glass.png"},
    groups = {cracky=1, stone=1},
    drop = "startest:reinforced_glass",
    sunlight_propagates = true,
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("startest:deep_space_stone", {
    description = "Deep Space Stone",
    tiles = {"deep_space_stone.png"},
    groups = {cracky=1, stone=1},
    drop = "startest:deep_space_stone"
})

minetest.register_node("startest:aiurite_ore", {
    description = "Aiurite Ore",
    tiles = {"aiurite_ore.png"},
    groups = {cracky=1, stone=1},
    drop = "startest:aiurite_fragment"
})

minetest.register_node("startest:liquid_gas", {
	description = "Liquid Gas",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "liquid_gas.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "liquid_gas.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "startest:flowing_gas",
	liquid_alternative_source = "startest:liquid_gas",
	liquid_viscosity = 1,
	post_effect_color = {a = 0, r = 0, g = 160, b = 0},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("startest:flowing_gas", {
	description = "Flowing Gas",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"liquid_gas.png"},
	special_tiles = {
		{
			name = "liquid_gas.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "liquid_gas.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "startest:flowing_gas",
	liquid_alternative_source = "startest:liquid_gas",
	liquid_viscosity = 1,
	post_effect_color = {a = 0, r = 0, g = 160, b = 0},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("startest:cracked_stone_with_gas", {
    description = "Cracked Stone With Gas",
    tiles = {"cracked_stone_with_gas.png", "default_stone.png", "default_stone.png", "default_stone.png", "default_stone.png", "default_stone.png"},
    groups = {cracky=1, stone=1},
    drop = ""
})
