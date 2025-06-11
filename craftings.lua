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
    output = "startest:reinforced_steel_ingot 16",
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
        {"startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "default:furnace", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:reinforced_glass 16",
    recipe = {
        {"default:glass", "startest:gas_drop", "default:glass"},
        {"default:glass", "startest:reinforced_steel_ingot", "default:glass"},
        {"default:glass", "default:glass", "default:glass"}
    }
})

minetest.register_craft({
    output = "startest:drill",
    recipe = {
        {"startest:reinforced_steel_ingot", "startest:gas_drop", "startest:reinforced_glass"},
        {"", "startest:reinforced_steel", "default:stone"},
        {"", "startest:atomic_reinforcer", "startest:reinforced_steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:drill",
    recipe = {
        {"startest:reinforced_steel_ingot", "startest:gas_drop", "startest:reinforced_glass"},
        {"", "startest:reinforced_steel", "default:stone"},
        {"", "startest:dense_space_crystal", "startest:reinforced_steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:gas_vial 30",
    recipe = {
        {"startest:reinforced_glass", "startest:gas_drop", "startest:reinforced_glass"},
        {"startest:reinforced_glass", "startest:gas_drop", "startest:reinforced_glass"},
        {"startest:reinforced_glass", "startest:reinforced_glass", "startest:reinforced_glass"}
    }
})

minetest.register_craft({
    output = "startest:empty_stack_of_gas_vials",
    recipe = {
        {"", "", "default:steel_ingot"},
        {"", "default:steel_ingot", ""},
        {"default:steel_ingot", "", ""}
    }
})

minetest.register_craft({
    output = "startest:stack_of_gas_vials",
    recipe = {
        {"startest:gas_vial", "startest:gas_vial", "startest:gas_vial"},
        {"", "startest:empty_stack_of_gas_vials", ""},
        {"startest:gas_vial", "startest:gas_vial", "startest:gas_vial"}
    }
})

minetest.register_craft({
    output = "startest:synthesizer",
    recipe = {
        {"startest:reinforced_steel_ingot", "startest:reinforced_glass", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "startest:engine", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "startest:reinforced_glass", "startest:reinforced_steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:fuel 2",
    recipe = {
        {"startest:space_crystal", "startest:gas_vial", "startest:space_crystal"},
        {"startest:gas_vial", "startest:reinforced_steel_ingot", "startest:gas_vial"},
        {"startest:space_crystal", "startest:gas_vial", "startest:space_crystal"}
    }
})

minetest.register_craft({
    output = "startest:engine_core",
    recipe = {
        {"startest:reinforced_steel_ingot", "startest:fuel", "startest:reinforced_steel_ingot"},
        {"startest:fuel", "startest:stack_of_gas_vials", "startest:fuel"},
        {"startest:reinforced_steel_ingot", "startest:fuel", "startest:reinforced_steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:scissor",
    recipe = {
        {"startest:space_crystal", "startest:aiurite_fragment", "startest:space_crystal"},
        {"startest:reinforced_steel_ingot", "startest:dense_space_crystal", "startest:reinforced_steel_ingot"},
        {"startest:space_crystal", "startest:reinforced_glass", "startest:space_crystal"}
    }
})

minetest.register_craft({
    output = "startest:engine",
    recipe = {
        {"startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "startest:engine_core", "startest:reinforced_steel_ingot"},
        {"startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot", "startest:reinforced_steel_ingot"}
    }
})

minetest.register_craft({
    output = "startest:space_energy 10",
    recipe = {
        {"", "", ""},
        {"startest:atomic_reinforcer", "startest:scissor", ""},
        {"", "", ""}
    }
})

minetest.register_craft({
    output = "startest:corruptor",
    recipe = {
        {"startest:reinforced_glass", "startest:reinforced_glass", ""},
        {"startest:gas_drop", "startest:space_energy", "startest:reinforced_glass"},
        {"startest:reinforced_glass", "startest:reinforced_glass", ""}
    }
})

minetest.register_craft({
    output = "startest:corrupted_aiurite_fragment 8",
    recipe = {
        {"startest:aiurite_fragment", "startest:aiurite_fragment", "startest:aiurite_fragment"},
        {"startest:aiurite_fragment", "startest:corrupted_energy", "startest:aiurite_fragment"},
        {"startest:aiurite_fragment", "startest:aiurite_fragment", "startest:aiurite_fragment"}
    }
})

minetest.register_craft({
    output = "startest:corrupted_energy 8",
    recipe = {
        {"startest:space_energy", "startest:space_energy", "startest:space_energy"},
        {"startest:space_energy", "startest:corruptor", "startest:space_energy"},
        {"startest:space_energy", "startest:space_energy", "startest:space_energy"}
    }
})

minetest.register_craft({
    output = "startest:charged_fuel",
    recipe = {
        {"", "", ""},
        {"startest:fuel", "startest:aiurite_fragment", ""},
        {"", "", ""}
    }
})

minetest.register_craft({
    output = "startest:hyper_charged_fuel",
    recipe = {
        {"", "", ""},
        {"startest:charged_fuel", "startest:corrupted_aiurite_fragment", ""},
        {"", "", ""}
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