local function formspec(pos)
	local spos = pos.x..','..pos.y..','..pos.z
	local formspec =
		'size[8,8.5]'..
		default.gui_bg..
		default.gui_bg_img..
		default.gui_slots..
		'list[nodemeta:'..spos..';input;3.5,1.5;1,1;]'..
		'list[current_player;main;0,5.5;8,3;8]'..
		'listring[current_player;main]'..
		'listring[current_player;main]'..
		default.get_hotbar_bg(0, 4.25)
	return formspec
end

local function allow_metadata_inventory_move(pos, from_list, from_index, to_list, to_index, count, player)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local stack = inv:get_stack(from_list, from_index)
	return allow_metadata_inventory_put(pos, to_list, to_index, stack, player)
end

local function allow_metadata_inventory_take(pos, listname, index, stack, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end
	return stack:get_count()
end

local function on_rightclick(pos, node, clicker, itemstack)
	minetest.show_formspec(
		clicker:get_player_name(),
		'biofuel:refinery',
		formspec(pos)
	)
end

local function generate_gas(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	if inv:room_for_item("input", "startest:gas_drop") then
		inv:add_item("input", "startest:gas_drop")
	end
end

minetest.register_abm({
	nodenames = {"startest:gas_extractor"},
	interval = 5,
	chance = 1,
	action = function(pos)
		local node_below = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
		if node_below.name == "startest:liquid_gas" then
			generate_gas(pos)
		end
	end,
})

minetest.register_node("startest:gas_extractor", {
    description = "Gas Extractor",
    tiles = {"gas_collector_up.png", "gas_collector_down.png", "gas_collector_side.png", "gas_collector_side.png", "gas_collector_side.png", "gas_collector_side.png"},
    groups = {cracky=1, stone=1},
    on_rightclick = on_rightclick,
    allow_metadata_inventory_move = allow_metadata_inventory_move,
    allow_metadata_inventory_take = allow_metadata_inventory_take,
    drop = "startest:gas_extractor",
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        local inv = meta:get_inventory()
        inv:set_size("input", 3) 
        inv:set_size("output", 3)
    end,
})
