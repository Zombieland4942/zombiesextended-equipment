
for x,reactor in pairs(fusion_reactor_equipment) do
    data:extend(
        {
            {
                type = "item",
                name = reactor.name,
                icon = "__darkstar-equipment__/graphics/icons/" .. reactor.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = reactor.name,
                subgroup = "ds-equipment",
                order = reactor.order,
                default_request_amount = 1,
                stack_size = 20,
            },
            {
                type = "generator-equipment",
                name = reactor.name,
                sprite =
                {
                    filename = "__darkstar-equipment__/graphics/equipment/" .. reactor.name .. ".png",
                    width = reactor.sprite_size,
                    height = reactor.sprite_size,
                    priority = "medium"
                },
                shape =
                {
                    width = reactor.width,
                    height = reactor.height,
                    type = "full"
                },
                energy_source =
                {
                    type = "electric",
                    usage_priority = "primary-output"
                },
                power = reactor.power,
                categories = {"armor"}
            },
        }
    )
end