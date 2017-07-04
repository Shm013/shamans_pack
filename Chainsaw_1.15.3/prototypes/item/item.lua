data:extend({
  {
    type = "mining-tool",
    name = "chainsaw",
    icon = "__Chainsaw__/graphics/icons/chainsaw.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 0 , type = "physical"}
        }
      }
    },
    durability = 7500,
    subgroup = "tool",
    order = "a[mining]-b[chainsaw]",
    speed = 20,
    stack_size = 20
  }
})
