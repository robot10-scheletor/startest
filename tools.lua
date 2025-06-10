minetest.register_tool("startest:drill", {
    description = "Drill",
    inventory_image = "drill.png",
	tool_capabilities = {
		full_punch_interval = 4,
		max_drop_level=1,
		groupcaps={
                    cracky={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=1000, maxlevel=1}
		},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
