
local subgroup = "equipment"

if settings.startup["zombies-use-seperate-tab"].value == true then
  subgroup  = "ds-equipment"
end

for x,battery in pairs(personal_battery) do
    
    table.insert(data.raw["technology"][battery.technology].effects, { type = "unlock-recipe", recipe = battery.name })
    
    data:extend(
        {       
            {
                type = "recipe",
                name = battery.name,
                enabled = false,
                energy_required = 5,
                ingredients = battery.ingredients,
                result = battery.name
            },    
            {
                type = "item",
                name = battery.name,
                icon = "__zombiesextended-equipment__/graphics/icons/" .. battery.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = battery.name,
                subgroup = subgroup,
                order = "bz-" .. battery.order,
                default_request_amount = 5,
                stack_size = 20
            },
            {
                type = "battery-equipment",
                name = battery.name,
                sprite =
                {
                    filename = "__zombiesextended-equipment__/graphics/equipment/" .. battery.name .. ".png",
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