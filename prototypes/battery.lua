
for x,battery in pairs(personal_battery) do
    data:extend(
        {           
            {
                type = "item",
                name = battery.name,
                icon = "__darkstar-equipment__/graphics/icons/" .. battery.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = battery.name,
                subgroup = "ds-equipment",
                order = battery.order,
                default_request_amount = 5,
                stack_size = 20
            },
            {
                type = "battery-equipment",
                name = battery.name,
                sprite =
                {
                    filename = "__darkstar-equipment__/graphics/equipment/" .. battery.name .. ".png",
                    width = 32,
                    height = 64,
                    priority = "medium"
                },
                shape =
                {
                    width = 1,
                    height = 2,
                    type = "full"
                },
                energy_source =
                {
                    type = "electric",
                    buffer_capacity = battery.capacity,
                    usage_priority = "tertiary"
                },
                categories = {"armor"}
            }
        }
    )
end