
equipment_grid = {
    { name = "xl-equipment-grid", width = 15, height = 15 },
    { name = "xxl-equipment-grid", width = 25, height = 25 },
    { name = "xxxl-equipment-grid", width = 35, height = 35 }
}

power_armor = {
    { order = "a-a", name = "power-armor-mk3", equipment_grid = "xl-equipment-grid", inventory_size_bonus = 30 },
    { order = "a-b", name = "power-armor-mk4", equipment_grid = "xxl-equipment-grid", inventory_size_bonus = 50 },
    { order = "a-c", name = "power-armor-mk5", equipment_grid = "xxxl-equipment-grid", inventory_size_bonus = 70 },
}

fusion_reactor_equipment = {
    { order = "b-a", name = "fusion-reactor-equipment-mk2", width = 4, height = 4, power = "1000kW", sprite_size = 128 },
    { order = "b-b", name = "fusion-reactor-equipment-mk3", width = 4, height = 4, power = "5000kW", sprite_size = 128 },
    { order = "b-c", name = "microverse-battery-mk1", width = 6, height = 6, power = "10000kW", sprite_size = 256 },
    { order = "b-d", name = "microverse-battery-mk2", width = 6, height = 6, power = "20000kW", sprite_size = 256 },
}

personal_shield = {
    { order = "c-a", name = "energy-shield-mk3-equipment", hitpoints = 200, hitpoint_recharge = 20, energy_per_hit = 40 },
    { order = "c-b", name = "energy-shield-mk4-equipment", hitpoints = 300, hitpoint_recharge = 30, energy_per_hit = 50 },
}

personal_battery = {
    { order = "d-a", name = "battery-mk3-equipment", capacity = "200MJ" },
    { order = "d-b", name = "battery-mk4-equipment", capacity = "300MJ" },
}

personal_roboport = {
    { order = "e-a", name = "personal-roboport-mk3-equipment", robots = 40, con_rad = 30, charging_station = 6, buffer = "60MJ", input = "6MW", charging = "2MW" },
    { order = "e-b", name = "personal-roboport-mk4-equipment", robots = 50, con_rad = 40, charging_station = 8, buffer = "80MJ", input = "10MW", charging = "4MW" }
}

personal_exoskeleton = {
    { order = "f-a", name = "exoskeleton-equipment-mk2", movement_bonus = 0.4, energy_consumption = "300kW" },
    { order = "f-b", name = "exoskeleton-equipment-mk3", movement_bonus = 0.5, energy_consumption = "500kW" }
}

personal_laser_device = {
    { order = "g-a", name = "personal-laser-defense-smg", distance = 15, damage = 0.8, cooldown = 7, energy_consumption_kJ = 50 },
    { order = "g-b", name = "personal-laser-defense-assault", distance = 40, damage = 2.5, cooldown = 60, energy_consumption_kJ = 80 },
    { order = "g-c", name = "personal-laser-defense-sniper", distance = 70, damage = 6, cooldown = 400, energy_consumption_kJ = 400 },
}

personal_canno_projectile = {
    { name = "pcd-projectile-1", damage = 2000, radius = 5, acceleration = 0.05 },
    { name = "pcd-projectile-2", damage = 20000, radius = 10, acceleration = 0.05 }
}

personal_cannon_device = {
    { order = "h-a", name = "personal-cannon-defense-mk1", projectile = "pcd-projectile-1", distance = 70, cooldown = 30, energy = "1MJ" },
    { order = "h-b", name = "personal-cannon-defense-mk2", projectile = "pcd-projectile-2", distance = 90, cooldown = 30, energy = "10MJ" }
}