local subgroup = "equipment"

if settings.startup["zombies-use-seperate-tab"].value == true then
  subgroup  = "ds-equipment"
end

for x,reactor in pairs(fusion_reactor_equipment) do

    table.insert(data.raw["technology"][reactor.technology].effects, { type = "unlock-recipe", recipe = reactor.name })

    data:extend(
        {
            {
                type = "recipe",
                name = reactor.name,
                enabled = false,
                energy_required = reactor.craft_time,
                ingredients = reactor.ingredients,
                result = reactor.name,
                requester_paste_multiplier = 1
            },
            {
                type = "item",
                name = reactor.name,
                icon = "__zombiesextended-equipment__/graphics/icons/" .. reactor.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                placed_as_equipment_result = reactor.name,
                subgroup = subgroup,
                order = "a[energy-source]-c" .. reactor.order,
                default_request_amount = 1,
                stack_size = 20,
            },
            {
                type = "generator-equipment",
                name = reactor.name,
                sprite =
                {
                    filename = "__zombiesextended-equipment__/graphics/equipment/" .. reactor.name .. ".png",
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