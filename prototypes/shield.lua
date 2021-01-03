local subgroup = "military-equipment"

if settings.startup["zombies-use-seperate-tab"].value == true then
  subgroup  = "ds-equipment"
end


for x,shield in pairs(personal_shield) do
    
    table.insert(data.raw["technology"][shield.technology].effects, { type = "unlock-recipe", recipe = shield.name })
    
    data:extend(
        {
            {
                type = "recipe",
                name = shield.name,
                enabled = false,
                energy_required = shield.craft_time,
                ingredients = shield.ingredients,
                result = shield.name
            },
            {
                type = "item",
                name = shield.name,
                icon = "__zombiesextended-equipment__/graphics/icons/" .. shield.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = shield.name,
                subgroup = subgroup,
                order = "a[shield]-" .. shield.order,
                default_request_amount = 5,
                stack_size = 20
            },
            {
                type = "energy-shield-equipment",
                name = shield.name,
                sprite =
                {
                    filename = "__zombiesextended-equipment__/graphics/equipment/" .. shield.name .. ".png",
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
                max_shield_value = shield.hitpoints,
                energy_source =
                {
                    type = "electric",
                    buffer_capacity = 20 * shield.hitpoints .. "kJ",
                    input_flow_limit = shield.hitpoint_recharge * shield.energy_per_hit .. "kW",
                    usage_priority = "primary-input"
                },
                energy_per_shield = shield.energy_per_hit .. "kJ",
                categories = {"armor"}
            }
        }
    )
end