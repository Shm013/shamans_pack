data:extend( {
        {
          type = "battery-equipment",
          name = "armor-pocket-equipment",
          sprite =
          {
            filename = "__armor-pockets__/graphics/icons/armor-pocket-equipment.png",
            width = 32,
            height = 32,
            priority = "medium"
          },
          shape =
          {
            width = 1,
            height = 1,
            type = "full"
          },
          energy_source =
          {
            type = "electric",
            buffer_capacity = "10kJ",
            input_flow_limit = "240kW",
            usage_priority = "primary-input"
          },
          energy_input = "10kW",
          tint = {r = 0, g = 0.1, b = 0, a = 0.2},
          categories = {"armor"}
        }
  })