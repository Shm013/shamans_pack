local rawmulti = angelsmods.marathon.rawmulti

data:extend(
{
	{
		type = "recipe",
		name = "resin-liquification",
		category = "crafting-with-fluid",
		subgroup = "petrochem-solids",
		enabled = true,
		allow_decomposition = false,
		normal =
		{
			energy_required = 2,
			ingredients =
			{
				{type="item", name="resin", amount=1}
			},
			results=
			{
				{type="fluid", name="liquid-resin", amount=40}
			},
		},
		icon_size = 32,
		order = "aa",
	},
	
	{
		type = "recipe",
		name = "stone-crushing",
		category = "ore-sorting-t1",
		subgroup = "processing-crafting",
		energy_required = 1,
		enabled = true,
		allow_decomposition = false,
		ingredients =
		{
			{"stone", 1}
		},
		results=
		{
			{type="item", name="stone-crushed", amount=2},
		},
		main_product = "stone-crushed",
		icon = "__angelsrefining__/graphics/icons/stone-crushed.png",
		icon_size = 32,
		order = "d[stone-crushing]",
	},
	
	{
		type = "recipe",
		name = "plastic-liquification",
		category = "crafting-with-fluid",
		subgroup = "petrochem-solids",
		enabled = true,
		allow_decomposition = false,
		normal =
		{
			energy_required = 2,
			ingredients =
			{
				{type="item", name="plastic-bar", amount=1}
			},
			results=
			{
				{type="fluid", name="liquid-plastic", amount=40}
			},
		},
		icon_size = 32,
		order = "aa",
	},
	
	{
		type = "recipe",
		name = "catalytic-water-separation-oxygen",
		category = "petrochem-electrolyser",
		subgroup = "petrochem-basics",
		energy_required = 2,
		enabled = true,
		ingredients =
		{
			{type="fluid", name="water-purified", amount=1000},
			{type="item", name="catalyst-metal-white", amount=1}
		},
		results=
		{
			{type="fluid", name="gas-oxygen", amount=800},
			{type="item", name="catalyst-metal-carrier", amount=1}
		},
		icon = "__angelspetrochem__/graphics/icons/raw-separation-4.png",
		icon_size = 32,
		order = "a[catalytic-water-separation-oxygen]",
		crafting_machine_tint =
		{
			primary = {r = 1, g = 0, b = 0, a = 0},
			secondary = {r = 1, g = 1, b = 1, a = 0},
			tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
		}
	},
	
	{
		type = "recipe",
		name = "catalytic-water-separation-hydrogen",
		category = "petrochem-electrolyser",
		subgroup = "petrochem-basics",
		energy_required = 2,
		enabled = true,
		ingredients =
		{
			{type="fluid", name="water-purified", amount=1000},
			{type="item", name="catalyst-metal-white", amount=1}
		},
		results=
		{
			{type="fluid", name="gas-hydrogen", amount=1200},
			{type="item", name="catalyst-metal-carrier", amount=1}
		},
		icon = "__angelspetrochem__/graphics/icons/raw-separation-4.png",
		icon_size = 32,
		order = "a[catalytic-water-separation-hydrogen]",
		crafting_machine_tint =
		{
			primary = {r = 1, g = 0, b = 0, a = 0},
			secondary = {r = 1, g = 1, b = 1, a = 0},
			tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
		}
	},
	
	{
    type = "recipe",
    name = "catalytic-air-separation-nitrogen",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients =
	{
		{type="fluid", name="gas-compressed-air", amount=1000},
		{type="item", name="catalyst-metal-black", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-nitrogen", amount=1000},
		{type="item", name="catalyst-metal-carrier", amount=1}
    },
    icon = "__angelspetrochem__/graphics/icons/nitrogen-02.png",
	icon_size = 32,
    order = "b[catalytic-air-separation-nitrogen]",
	},
	
	{
    type = "recipe",
    name = "catalytic-air-separation-oxygen",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients =
	{
		{type="fluid", name="gas-compressed-air", amount=1000},
		{type="item", name="catalyst-metal-black", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-oxygen", amount=1000},
		{type="item", name="catalyst-metal-carrier", amount=1}
    },
    icon = "__angelspetrochem__/graphics/icons/nitrogen-02.png",
	icon_size = 32,
    order = "b[catalytic-air-separation-oxygen]",
	},

}
)