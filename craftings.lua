minetest.register_craft({
    output = "startest:gun_core 1",
    recipe = {
        {"default:steel_ingot", "default:coal_lump", "default:steel_ingot"},
        {"default:coal_lump", "startest:space_crystal", "default:coal_lump"},
        {"default:steel_ingot", "default:coal_lump", "default:steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:space_troop_rifle 1",
    recipe = {
        {"", "", "default:steel_ingot"},
        {"", "startest:gun_core", ""},
        {"default:stick", "", ""}
    }
})

minetest.register_craft({
    output = "startest:rifle_bullets 10",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"startest:space_crystal", "startest:space_crystal", "startest:space_crystal"},
        {"startest:space_crystal", "startest:space_crystal", "startest:space_crystal"}
    }
})

minetest.register_craft({
    output = "startest:empty_laser_cell 1",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"default:steel_ingot", "", "default:steel_ingot"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:light_collector 1",
    recipe = {
        {"", "", "default:diamond"},
        {"startest:empty_laser_cell", "startest:empty_laser_cell", "startest:empty_laser_cell"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:light_collector_full 1",
    recipe = {
        {"", "", ""},
        {"", "startest:light_collector", ""},
        {"", "", ""}
    }
})

minetest.register_craft({
    output = "startest:laser_cell 3",
    recipe = {
        {"", "", ""},
        {"", "startest:light_collector_full", ""},
        {"", "", ""}
    }
})

minetest.register_craft({
    output = "startest:space_troop_sniper 1",
    recipe = {
        {"", "", "default:steel_ingot"},
        {"default:steel_ingot", "startest:gun_core", ""},
        {"default:stick", "", ""}
    }
})

minetest.register_craft({
    output = "startest:reinforced_steel_ingot 4",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"default:steel_ingot", "startest:atomic_reinforcer", "default:steel_ingot"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:reinforced_steel_ingot 9",
    recipe = {
        {"", "", ""},
        {"", "startest:reinforced_steel", ""},
        {"", "", ""}
    }
})

minetest.register_craft({
    output = "startest:reinforced_steel",
    recipe = {
        {"startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:atomic_reinforcer",
    recipe = {
        {"startest:space_crystal", "default:mese_crystal", "startest:space_crystal"},
        {"default:mese_crystal", "default:diamond", "default:mese_crystal"},
        {"startest:space_crystal", "default:mese_crystal", "startest:space_crystal"}
    }
})

minetest.register_craft({
    output = "startest:gas_extractor",
    recipe = {
        {"default:steel_ingot", "", ""},
        {"", "default:steel_ingot", "startest:space_crystal"},
        {"", "", "default:steel_ingot"}
    }
})

if minetest.get_modpath("3d_armor") then

    minetest.register_craft({
        output = "startest:space_crystal_helmet",
        recipe = {
            {"startest:space_crystal", "startest:space_crystal", "startest:space_crystal"},
            {"startest:space_crystal", "", "startest:space_crystal"},
            {"", "", ""}
        }
    })
    
   minetest.register_craft({
        output = "startest:space_crystal_chestplate",
        recipe = {
            {"startest:space_crystal", "", "startest:space_crystal"},
            {"startest:space_crystal", "startest:space_crystal", "startest:space_crystal"},
            {"startest:space_crystal", "startest:space_crystal", "startest:space_crystal"}
        }
    })
    
    minetest.register_craft({
        output = "startest:space_crystal_leggins",
        recipe = {
            {"startest:space_crystal", "startest:space_crystal", "startest:space_crystal"},
            {"startest:space_crystal", "", "startest:space_crystal"},
            {"startest:space_crystal", "", "startest:space_crystal"}
        }
    })
    
    minetest.register_craft({
        output = "startest:space_crystal_boots",
        recipe = {
            {"", "", ""},
            {"startest:space_crystal", "", "startest:space_crystal"},
            {"startest:space_crystal", "", "startest:space_crystal"}
        }
    })
    
    minetest.register_craft({
        output = "startest:dense_space_crystal_helmet",
        recipe = {
            {"startest:dense_space_crystal", "startest:dense_space_crystal", "startest:dense_space_crystal"},
            {"startest:dense_space_crystal", "", "startest:dense_space_crystal"},
            {"", "", ""}
        }
    })
    
   minetest.register_craft({
        output = "startest:dense_space_crystal_chestplate",
        recipe = {
            {"startest:dense_space_crystal", "", "startest:dense_space_crystal"},
            {"startest:dense_space_crystal", "startest:dense_space_crystal", "startest:dense_space_crystal"},
            {"startest:dense_space_crystal", "startest:dense_space_crystal", "startest:dense_space_crystal"}
        }
    })
    
    minetest.register_craft({
        output = "startest:dense_space_crystal_leggins",
        recipe = {
            {"startest:dense_space_crystal", "startest:dense_space_crystal", "dense_startest:space_crystal"},
            {"startest:dense_space_crystal", "", "startest:dense_space_crystal"},
            {"startest:dense_space_crystal", "", "startest:dense_space_crystal"}
        }
    })
    
    minetest.register_craft({
        output = "startest:dense_space_crystal_boots",
        recipe = {
            {"", "", ""},
            {"startest:dense_space_crystal", "", "startest:dense_space_crystal"},
            {"startest:dense_space_crystal", "", "startest:dense_space_crystal"}
        }
    })
    
    if minetest.get_modpath("shields") then
        
        minetest.register_craft({
            output = "startest:space_crystal_shield",
            recipe = {
                {"", "startest:space_crystal", ""},
                {"startest:space_crystal", "startest:space_crystal", "startest:space_crystal"},
                {"", "startest:space_crystal", ""}
            }
        })
        
        minetest.register_craft({
            output = "startest:dense_space_crystal_shield",
            recipe = {
                {"", "startest:dense_space_crystal", ""},
                {"startest:dense_space_crystal", "startest:dense_space_crystal", "startest:dense_space_crystal"},
                {"", "startest:dense_space_crystal", ""}
            }
        })
    end
end