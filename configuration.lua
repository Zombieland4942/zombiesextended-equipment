local science_t1 = {{"automation-science-pack",1}}
local science_t2 = {{"automation-science-pack",1},{"logistic-science-pack",1}}
local science_t3 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1}}
local science_t4 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1}}
local science_t5 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1}}
local science_t6 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1},{"space-science-pack",1}}

technologies = {
    { order = "a-a-a", name = "power-armor-mk3", count = 600, time = 60, prerequisite = {"power-armor-mk2"}, ingredients = science_t5 },
    { order = "a-a-b", name = "power-armor-mk4", count = 800, time = 60, prerequisite = {"power-armor-mk3"}, ingredients = science_t6 },
    { order = "a-a-c", name = "power-armor-mk5", count = 1000, time = 60, prerequisite = {"power-armor-mk4"}, ingredients = science_t6 },

    { order = "a-b-a", name = "reactor-equipment-mk2", count = 400, time = 60, prerequisite = {"fusion-reactor-equipment"}, ingredients = science_t5 },
    { order = "a-b-b", name = "reactor-equipment-mk3", count = 600, time = 60, prerequisite = {"reactor-equipment-mk2"}, ingredients = science_t5 },
    { order = "a-b-c", name = "reactor-equipment-mk4", count = 800, time = 60, prerequisite = {"reactor-equipment-mk3"}, ingredients = science_t6 },
    { order = "a-b-d", name = "reactor-equipment-mk5", count = 1000, time = 60, prerequisite = {"reactor-equipment-mk4"}, ingredients = science_t6 },

    { order = "a-c-a", name = "energy-shield-mk3-equipment", count = 400, time = 60, prerequisite = {"energy-shield-mk2-equipment"}, ingredients = science_t5 },
    { order = "a-c-b", name = "energy-shield-mk4-equipment", count = 600, time = 60, prerequisite = {"energy-shield-mk3-equipment"}, ingredients = science_t6 },

    { order = "a-d-a", name = "battery-mk3-equipment", count = 200, time = 60, prerequisite = {"battery-mk2-equipment"}, ingredients = science_t4 },
    { order = "a-d-b", name = "battery-mk4-equipment", count = 400, time = 60, prerequisite = {"battery-mk3-equipment"}, ingredients = science_t5 },

    { order = "a-d-b", name = "personal-roboport-mk3-equipment", count = 500, time = 60, prerequisite = {"personal-roboport-mk2-equipment"}, ingredients = science_t4 },
    { order = "a-d-b", name = "personal-roboport-mk4-equipment", count = 1000, time = 60, prerequisite = {"personal-roboport-mk3-equipment"}, ingredients = science_t5 },

    { order = "a-e-a", name = "exoskeleton-equipment-mk2", count = 100, time = 60, prerequisite = {"exoskeleton-equipment"}, ingredients = science_t4 },
    { order = "a-e-b", name = "exoskeleton-equipment-mk3", count = 200, time = 60, prerequisite = {"exoskeleton-equipment-mk2"}, ingredients = science_t5 },

    { order = "a-f-a", name = "personal-laser-defense-equipment-mk2", count = 400, time = 60, prerequisite = {"personal-laser-defense-equipment"}, ingredients = science_t5 },

    { order = "a-g-a", name = "personal-canon-defense-equipment-mk1", count = 500, time = 60, prerequisite = {"personal-laser-defense-equipment-mk2"}, ingredients = science_t5 },
    { order = "a-g-b", name = "personal-canon-defense-equipment-mk2", count = 1000, time = 60, prerequisite = {"personal-canon-defense-equipment-mk1"}, ingredients = science_t6 },
}

power_armor = {
    { order = "f", name = "power-armor-mk3", equipment_grid = "xl-equipment-grid", inventory_size_bonus = 30, ingredients = { {"power-armor-mk2", 1},{"complex-processing-unit", 32},{"vibranium-plate", 16} }, technology = "power-armor-mk3" },
    { order = "g", name = "power-armor-mk4", equipment_grid = "xxl-equipment-grid", inventory_size_bonus = 50, ingredients = { {"power-armor-mk3", 1},{"complex-processing-unit", 45},{"vibranium-plate", 32} }, technology = "power-armor-mk4" },
    { order = "h", name = "power-armor-mk5", equipment_grid = "xxxl-equipment-grid", inventory_size_bonus = 70, ingredients = { {"power-armor-mk4", 1},{"complex-processing-unit", 64},{"vibranium-plate", 64} }, technology = "power-armor-mk5" },
}

fusion_reactor_equipment = {
    { order = "a", name = "fusion-reactor-equipment-mk2", width = 4, height = 4, power = "1000kW", sprite_size = 128, ingredients = { {"fusion-reactor-equipment", 1},{"complex-processing-unit", 2} }, technology = "reactor-equipment-mk2" },
    { order = "b", name = "fusion-reactor-equipment-mk3", width = 4, height = 4, power = "5000kW", sprite_size = 128, ingredients = { {"fusion-reactor-equipment-mk2", 5},{"complex-processing-unit", 4} }, technology = "reactor-equipment-mk3" },
    { order = "c", name = "microverse-battery-mk1", width = 6, height = 6, power = "10000kW", sprite_size = 256, ingredients = { {"fusion-reactor-equipment-mk3", 2},{"complex-processing-unit", 10},{"vibranium-plate", 10} }, technology = "reactor-equipment-mk4" },
    { order = "d", name = "microverse-battery-mk2", width = 6, height = 6, power = "20000kW", sprite_size = 256, ingredients = { {"microverse-battery-mk1", 2},{"complex-processing-unit", 20},{"vibranium-plate", 20} }, technology = "reactor-equipment-mk5" },
}

personal_shield = {
    { order = "c", name = "energy-shield-mk3-equipment", hitpoints = 200, hitpoint_recharge = 20, energy_per_hit = 40, ingredients = { {"energy-shield-mk2-equipment", 1},{"complex-processing-unit", 2} }, technology = "energy-shield-mk3-equipment" },
    { order = "d", name = "energy-shield-mk4-equipment", hitpoints = 400, hitpoint_recharge = 40, energy_per_hit = 80, ingredients = { {"energy-shield-mk3-equipment", 1},{"complex-processing-unit", 4},{"vibranium-plate", 10} }, technology = "energy-shield-mk4-equipment" },
}

personal_battery = {
    { order = "a", name = "battery-mk3-equipment", capacity = "200MJ", ingredients = { {"battery-mk2-equipment", 1},{"complex-processing-unit", 4} }, technology = "battery-mk3-equipment" },
    { order = "b", name = "battery-mk4-equipment", capacity = "400MJ", ingredients = { {"battery-mk3-equipment", 1},{"complex-processing-unit", 8},{"vibranium-plate", 10} }, technology = "battery-mk4-equipment" },
}

personal_roboport = {
    { order = "c", name = "personal-roboport-mk3-equipment", robots = 40, con_rad = 30, charging_station = 6, buffer = "60MJ", input = "36MW", charging = "36MW", ingredients = { {"personal-roboport-mk2-equipment", 2},{"complex-processing-unit", 6} }, technology = "personal-roboport-mk3-equipment" },
    { order = "d", name = "personal-roboport-mk4-equipment", robots = 50, con_rad = 40, charging_station = 8, buffer = "80MJ", input = "80MW", charging = "80MW", ingredients = { {"personal-roboport-mk3-equipment", 2},{"complex-processing-unit", 12},{"vibranium-plate", 20} }, technology = "personal-roboport-mk4-equipment" },
}

personal_exoskeleton = {
    { order = "a", name = "exoskeleton-equipment-mk2", movement_bonus = 0.4, energy_consumption = "300kW", ingredients = { {"exoskeleton-equipment", 2},{"complex-processing-unit", 4} }, technology = "exoskeleton-equipment-mk2" },
    { order = "b", name = "exoskeleton-equipment-mk3", movement_bonus = 0.8, energy_consumption = "600kW", ingredients = { {"exoskeleton-equipment-mk2", 2},{"complex-processing-unit", 8},{"vibranium-plate", 20} }, technology = "exoskeleton-equipment-mk3" }
}

personal_laser_device = {
  --{ order = "a", name = "default-pld",                    distance = 15, damage = 3,   cooldown = 40,  energy_consumption_kJ = 50,  ingredients = { {"personal-laser-defense-equipment", 2},{"complex-processing-unit", 8},{"vibranium-plate", 20} }, technology = "personal-laser-defense-equipment-mk2" },
    { order = "a", name = "personal-laser-defense-smg",     distance = 15, damage = 1.5, cooldown = 5,   energy_consumption_kJ = 100, ingredients = { {"personal-laser-defense-equipment", 2},{"complex-processing-unit", 8},{"vibranium-plate", 20} }, technology = "personal-laser-defense-equipment-mk2" },
    { order = "b", name = "personal-laser-defense-assault", distance = 30, damage = 3,   cooldown = 20,  energy_consumption_kJ = 150, ingredients = { {"personal-laser-defense-equipment", 2},{"complex-processing-unit", 8},{"vibranium-plate", 20} }, technology = "personal-laser-defense-equipment-mk2" },
    { order = "c", name = "personal-laser-defense-sniper",  distance = 60, damage = 12,  cooldown = 160, energy_consumption_kJ = 200, ingredients = { {"personal-laser-defense-equipment", 2},{"complex-processing-unit", 8},{"vibranium-plate", 20} }, technology = "personal-laser-defense-equipment-mk2" },
}

personal_canno_projectile = {
    { name = "pcd-projectile-1", damage = 2000, radius = 10, acceleration = 0.05 },
    { name = "pcd-projectile-2", damage = 20000, radius = 20, acceleration = 0.05 }
}

personal_cannon_device = {
    { order = "d", name = "personal-cannon-defense-mk1", width = 6, height = 8, projectile = "pcd-projectile-1", auto = "true", distance = 70, cooldown = 20, energy = "10MJ", ingredients = { {"personal-laser-defense-equipment", 10},{"complex-processing-unit", 15},{"vibranium-plate", 40} }, technology = "personal-canon-defense-equipment-mk1" },
    { order = "e", name = "personal-cannon-defense-mk2", width = 8, height = 16, projectile = "pcd-projectile-2", auto = "false", distance = 100, cooldown = 40, energy = "100MJ", ingredients = { {"personal-cannon-defense-mk1", 2},{"complex-processing-unit", 30},{"vibranium-plate", 80} }, technology = "personal-canon-defense-equipment-mk2" },
}

personal_cannon_device_remote = {
    { order = "f", name = "personal-cannon-defense-mk2-remote", personal_cannon_device = "personal-cannon-defense-mk2", ingredients = { {"complex-processing-unit", 30},{"vibranium-plate", 80} }, technology = "personal-canon-defense-equipment-mk2" }
}