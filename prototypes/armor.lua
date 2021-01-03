
local subgroup = "armor"

if settings.startup["zombies-use-seperate-tab"].value == true then
  subgroup  = "ds-equipment"
end

for x,armor in pairs(power_armor) do
    
    table.insert(data.raw["technology"][armor.technology].effects, { type = "unlock-recipe", recipe = armor.name })

    data:extend(
        {
            {
                type = "recipe",
                name = armor.name,
                enabled = false,
                energy_required = armor.craft_time,
                ingredients = armor.ingredients,
                result = armor.name,
                requester_paste_multiplier = 1
            },
            {
                type = "armor",
                name = armor.name,
                icon = "__zombiesextended-equipment__/graphics/icons/" .. armor.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                resistances =
                {
                    {
                        type = "physical",
                        decrease = 10,
                        percent = 40
                    },
                    {
                        type = "acid",
                        decrease = 0,
                        percent = 70
                    },
                    {
                        type = "explosion",
                        decrease = 60,
                        percent = 50
                    },
                    {
                        type = "fire",
                        decrease = 0,
                        percent = 70
                    }
                },
                subgroup = subgroup,
                order = armor.order,
                stack_size = 1,
                infinite = true,
                equipment_grid = armor.equipment_grid,
                inventory_size_bonus = armor.inventory_size_bonus
            }
        }
    )
end