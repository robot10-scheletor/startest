minetest.register_tool("startest:gas_extractor", {
    description = "Gas Extractor",
    inventory_image = "gas_extractor.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
					snappy={times={[1]=3, [2]=2, [3]=1}, uses=10, maxlevel=3},
		},
		damage_groups = {fleshy=1},
	},
	sound = {breaks = "default_tool_breaks"},
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		local pos = pointed_thing.under
		if minetest.is_protected(pos, user:get_player_name()) then
			minetest.record_protection_violation(pos, user:get_player_name())
			return
		end
		local node = minetest.get_node(pos)
		local node_name = node.name
		node.name = "startest:liquid_gas"
        local inv = user:get_inventory()
        local stack = ItemStack("startest:gas_drop 1")
        local leftover = inv:add_item("main", stack)
        if not minetest.creative_mode then
			local item_wear = tonumber(itemstack:get_wear())
			item_wear = item_wear + 819
			if item_wear > 65535 then
				itemstack:clear()
				return itemstack
			end
			itemstack:set_wear(item_wear)
		end
		return itemstack
	end,
})