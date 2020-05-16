
for x,grid in pairs(equipment_grid) do
    data:extend(
        {
            {
                type = "equipment-grid",
                name = grid.name,
                width = grid.width,
                height = grid.height,
                equipment_categories = {"armor"}
            }
        }
    )
end
