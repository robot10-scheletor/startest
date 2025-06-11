local function formspec(pos)
	local spos = pos.x..','..pos.y..','..pos.z
	local formspec =
		'size[8,9]'..
		default.gui_bg..
		default.gui_bg_img..
		default.gui_slots..
		'list[nodemeta:'..spos..';input;3.5,1.5;1,1;]'..
		'list[nodemeta:'..spos..';fuel;3.5,3;1,1;]'..
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
	if from_list == "fuel" and to_list ~= "fuel" then
		return 0
	end
	return allow_metadata_inventory_put(pos, to_list, to_index, stack, player)
end

local function allow_metadata_inventory_move(pos, from_list, from_index, to_list, to_index, count, player)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local stack = inv:get_stack(from_list, from_index)
	if from_list == "fuel" and to_list ~= "fuel" then
		return 0
	end
	if to_list == "fuel" then
		local fuel_stack = inv:get_stack("fuel", 1)
		if fuel_stack and fuel_stack:get_name() == stack:get_name() then
			return math.min(count, 5 - fuel_stack:get_count())
		else
			return math.min(count, 5)
		end
	end
	return allow_metadata_inventory_put(pos, to_list, to_index, stack, player)
end

local function on_rightclick(pos, node, clicker, itemstack)
	minetest.show_formspec(
		clicker:get_player_name(),
		'startest:synthesizer',
		formspec(pos)
	)
end

local function generate_gas(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	if inv:room_for_item("input", "startest:space_crystal") then
		local fuel_stack = inv:get_stack("fuel", 1)
		if fuel_stack and fuel_stack:get_name() == "startest:gas_drop" and fuel_stack:get_count() >= 5 then
			inv:remove_item("fuel", "startest:gas_drop 5")
			inv:add_item("input", "startest:space_crystal")
		end
	end
end

minetest.register_abm({
	nodenames = {"startest:synthesizer"},
	interval = 30,
	chance = 1,
	action = function(pos)
		local node_below = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
		if node_below.name == "startest:cracked_stone" then
			generate_gas(pos)
		end
	end,
})

minetest.register_node("startest:synthesizer", {
    description = "Synthesizer",
    tiles = {"gas_collector_up.png", "gas_collector_down.png", "gas_collector_side.png", "gas_collector_side.png", "gas_collector_side.png", "gas_collector_side.png"},
    groups = {cracky=1, stone=1},
    on_rightclick = on_rightclick,
    allow_metadata_inventory_move = allow_metadata_inventory_move,
    allow_metadata_inventory_take = allow_metadata_inventory_take,
    drop = "startest:synthesizer",
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        local inv = meta:get_inventory()
        inv:set_size("input", 1)
        inv:set_size("fuel", 1) 
        inv:set_size("output", 3)
    end,
})
