data:extend({
  {
    type = "explosion",
    name = "chainsaw-sound",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__core__/graphics/empty.png",
        priority = "low",
        width = 1,
        height = 1,
        frame_count = 1,
        line_length = 1,
        animation_speed = 1
      },
    },
    light = {intensity = 0, size = 0},
    sound =
    {
      {
      filename = "__Chainsaw__/sounds/chainsaw.ogg",
      volume = 0.5
      }
    }
  },
})
