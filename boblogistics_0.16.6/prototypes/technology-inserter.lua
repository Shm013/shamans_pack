data:extend(
{
  {
    type = "technology",
    name = "inserter-stack-size-bonus-1",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 128,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      }
    },
    prerequisites = {"logistics"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-a",
  },
  {
    type = "technology",
    name = "inserter-stack-size-bonus-2",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 128,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      }
    },
    prerequisites = {"inserter-stack-size-bonus-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-b",
  },
  {
    type = "technology",
    name = "inserter-stack-size-bonus-3",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 128,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      }
    },
    prerequisites = {"inserter-stack-size-bonus-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-c"
  },
  {
    type = "technology",
    name = "inserter-stack-size-bonus-4",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 128,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      }
    },
    prerequisites = {"inserter-stack-size-bonus-3"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-d"
  },
}
)


data:extend{
  {
    type = "technology",
    name = "inserter-capacity-bonus-8",
    icon = "__boblogistics__/graphics/icons/technology/stack-inserter-capacity.png",
    icon_size = 128,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 3
      }
    },
    prerequisites =
    {
      "inserter-capacity-bonus-7",
      "inserter-stack-size-bonus-4"
    },
    unit =
    {
      count_formula = "2^(L-8)*1000",
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-o-i"
  }
}


if not data.raw.technology["long-inserters-1"] then
data:extend(
{
  {
    type = "technology",
    name = "long-inserters-1",
    icon = "__boblogistics__/graphics/icons/technology/long-inserters.png",
    icon_size = 128,
    effects =
    {
    },
    prerequisites =
    {
      "automation",
    },
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 15
    },
    order = "a-f-a-1",
  },
}
)
end

