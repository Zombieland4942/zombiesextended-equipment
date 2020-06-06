
for x,roboport in pairs(personal_roboport) do
    
    table.insert(data.raw["technology"][roboport.technology].effects, { type = "unlock-recipe", recipe = roboport.name })
    
    data:extend(
        {   
            {
                type = "recipe",
                name = roboport.name,
                enabled = false,
                energy_required = 5,
                ingredients = roboport.ingredients,
                result = roboport.name
            },
            {
                type = "item",
                name = roboport.name,
                icon = "__darkstar-equipment__/graphics/icons/" .. roboport.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = roboport.name,
                subgroup = "ds-equipment",
                order = roboport.order,
                default_request_amount = 1,
                stack_size = 20
            },
            {
                type = "roboport-equipment",
                name = roboport.name,
                take_result = roboport.name,
                sprite =
                {
                    filename = "__darkstar-equipment__/graphics/equipment/" .. roboport.name .. ".png",
                    width = 64,
                    height = 64,
                    priority = "medium"
                },
                shape =
                {
                    width = 2,
                    height = 2,
                    type = "full"
                },
                energy_source =
                {
                    type = "electric",
                    buffer_capacity = roboport.buffer,
                    input_flow_limit = roboport.input,
                    usage_priority = "secondary-input"
                },
                charging_energy = roboport.charging,
                robot_limit = roboport.robots,
                construction_radius = roboport.con_rad,
                spawn_and_station_height = 0.4,
                spawn_and_station_shadow_height_offset = 0.5,
                charge_approach_distance = 2.6,
                robots_shrink_when_entering_and_exiting = true,
                recharging_animation =
                {
                    filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
                    priority = "high",
                    width = 37,
                    height = 35,
                    frame_count = 16,
                    scale = 1.5,
                    animation_speed = 0.5
                },
                recharging_light = {intensity = 0.4, size = 5},
                stationing_offset = {0, -0.6},
                charging_station_shift = {0, 0.5},
                charging_station_count = roboport.charging_station,
                charging_distance = 1.6,
                charging_threshold_distance = 5,
                categories = {"armor"}
            }
        }
    )
end