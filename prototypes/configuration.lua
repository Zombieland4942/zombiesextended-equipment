
equipment_grid = {
    { name = "xl-equipment-grid", width = 15, height = 15 },
    { name = "xxl-equipment-grid", width = 25, height = 25 },
    { name = "xxxl-equipment-grid", width = 35, height = 35 }
}

power_armor = {
    { order = "a", name = "power-armor-mk3", equipment_grid = "xl-equipment-grid", inventory_size_bonus = 30 },
    { order = "b", name = "power-armor-mk4", equipment_grid = "xxl-equipment-grid", inventory_size_bonus = 50 },
    { order = "c", name = "power-armor-mk5", equipment_grid = "xxxl-equipment-grid", inventory_size_bonus = 70 },
}

fusion_reactor_equipment = {
    { order = "d", name = "fusion-reactor-equipment-mk2", width = 4, height = 4, power = "1000kW", sprite_size = 128 },
    { order = "e", name = "fusion-reactor-equipment-mk3", width = 4, height = 4, power = "5000kW", sprite_size = 128 },
    { order = "f", name = "microverse-battery-mk1", width = 6, height = 6, power = "10000kW", sprite_size = 256 },
    { order = "g", name = "microverse-battery-mk2", width = 6, height = 6, power = "20000kW", sprite_size = 256 },
}

personal_shield = {
    { order = "h", name = "energy-shield-mk3-equipment", hitpoints = 200, hitpoint_recharge = 20, energy_per_hit = 40 },
    { order = "i", name = "energy-shield-mk4-equipment", hitpoints = 300, hitpoint_recharge = 30, energy_per_hit = 50 },
}

