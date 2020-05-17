
for x,pld in pairs(personal_laser_device) do
    data:extend(
        {
            {
                type = "item",
                name = pld.name,
                icon = "__darkstar-equipment__/graphics/icons/" .. pld.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = pld.name,
                subgroup = "ds-equipment",
                order = pld.order,
                default_request_amount = 5,
                stack_size = 20
            },
            {
                type = "active-defense-equipment",
                name = pld.name,
                sprite =
                {
                    filename = "__darkstar-equipment__/graphics/equipment/" .. pld.name .. ".png",
                    width = 351,
                    height = 516,
                    priority = "medium"
                },
                shape =
                {
                    width = 2,
                    height = 4,
                    type = "full"
                },
                energy_source =
                {
                    type = "electric",
                    usage_priority = "secondary-input",
                    buffer_capacity = pld.energy_consumption_kJ * 5 .. "kJ"
                },
                attack_parameters =
                {
                    type = "beam",
                    cooldown = pld.cooldown,
                    range = pld.distance,
                    damage_modifier = pld.damage,
                    ammo_type =
                    {
                        category = "laser-turret",
                        energy_consumption = pld.energy_consumption_kJ .. "kJ",
                        action =
                        {
                            type = "direct",
                            action_delivery =
                            {
                                type = "beam",
                                beam = "laser-beam",
                                max_length = pld.distance,
                                duration = 40,
                                source_offset = {0, -1.31439 }
                            }
                        }
                    }
                },
                automatic = true,
                categories = {"armor"}
            },
        }
    )
end