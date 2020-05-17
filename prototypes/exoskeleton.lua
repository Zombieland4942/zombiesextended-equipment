
for x,exo in pairs(personal_exoskeleton) do
    data:extend(
        {
            {
                type = "item",
                name = exo.name,
                icon = "__darkstar-equipment__/graphics/icons/" .. exo.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = exo.name,
                subgroup = "ds-equipment",
                order = exo.order,
                default_request_amount = 5,
                stack_size = 20
            },
            {
                type = "movement-bonus-equipment",
                name = exo.name,
                sprite =
                {
                    filename = "__darkstar-equipment__/graphics/equipment/" .. exo.name .. ".png",
                    width = 64,
                    height = 128,
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
                    usage_priority = "secondary-input"
                },
                energy_consumption = exo.energy_consumption,
                movement_bonus = exo.movement_bonus,
                categories = {"armor"}
            },
        }
    )
end