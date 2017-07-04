
--Template
if data.raw["electric-pole"]["medium-electric-pole-8"] then 
if data.raw[""][""] then 
	data.raw["item"][""].icon = ""
	data.raw[""][""].icon = ""
	data.raw[""][""].pictures["filename"] = "" 
 end
 end

if data.raw["assembling-machine"]["assembling-machine-1"] then
if data.raw["assembling-machine"]["steam-cracker"] then 
if data.raw["assembling-machine"]["steam-cracker"] then 
	data.raw["item"]["steam-cracker"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-1.png"
	data.raw["assembling-machine"]["steam-cracker"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-1.png"
	data.raw["assembling-machine"]["steam-cracker"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/steam-cracker/steam-cracker.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5}
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/steam-cracker/steam-cracker-1.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5}
	}}}
	data.raw["assembling-machine"]["steam-cracker"].fluid_boxes = {
		{
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    }
end
 
 if data.raw["assembling-machine"]["steam-cracker-2"] then 
	data.raw["item"]["steam-cracker-2"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-2.png"
	data.raw["assembling-machine"]["steam-cracker-2"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-2.png"
end
 
 
 if data.raw["assembling-machine"]["steam-cracker-3"] then 
	data.raw["item"]["steam-cracker-3"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-3.png"
	data.raw["assembling-machine"]["steam-cracker-3"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-3.png"
	data.raw["assembling-machine"]["steam-cracker-3"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/steam-cracker/steam-cracker.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5}
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/steam-cracker/steam-cracker-3.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5}
	}}}	
	data.raw["assembling-machine"]["steam-cracker-3"].fluid_boxes = {
		{
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    }
 end
 
 if data.raw["assembling-machine"]["steam-cracker-4"] then 
	data.raw["item"]["steam-cracker-4"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-4.png"
	data.raw["assembling-machine"]["steam-cracker-4"].icon = "__ShinyAngelGFX__/graphics/entity/steam-cracker/icon/steam-cracker-4.png"
	data.raw["assembling-machine"]["steam-cracker-4"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/steam-cracker/steam-cracker.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5}
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/steam-cracker/steam-cracker-4.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5}
		}}}
	data.raw["assembling-machine"]["steam-cracker-4"].fluid_boxes = {
		{
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    }
    -- pipe_covers = pipecoverspictures2()
    
end
end
 

if data.raw["assembling-machine"]["separator"] then  
 if data.raw["assembling-machine"]["separator"] then 
	data.raw["item"]["separator"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-1.png"
	data.raw["assembling-machine"]["separator"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-1.png"
	data.raw["assembling-machine"]["separator"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/separator/separator.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/separator/separator-1.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
	}}}
	data.raw["assembling-machine"]["separator"].fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
 end
 
 
 if data.raw["assembling-machine"]["separator-2"] then 
	data.raw["item"]["separator-2"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-2.png"
	data.raw["assembling-machine"]["separator-2"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-2.png"
	data.raw["assembling-machine"]["separator-2"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/separator/separator.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/separator/separator-2.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
	}}}
	data.raw["assembling-machine"]["separator-2"].fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
 end
 
 
 if data.raw["assembling-machine"]["separator-3"] then 
	data.raw["item"]["separator-3"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-3.png"
	data.raw["assembling-machine"]["separator-3"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-3.png"
	data.raw["assembling-machine"]["separator-3"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/separator/separator.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/separator/separator-3.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
	}}}
	data.raw["assembling-machine"]["separator-3"].fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
 end
 
 
 if data.raw["assembling-machine"]["separator-4"] then 
	data.raw["item"]["separator-4"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-4.png"
	data.raw["assembling-machine"]["separator-4"].icon = "__ShinyAngelGFX__/graphics/entity/separator/icon/separator-4.png"
	data.raw["assembling-machine"]["separator-4"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/separator/separator.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/separator/separator-4.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 1,
        shift = {0, 0},
	}}}
	data.raw["assembling-machine"]["separator-4"].fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
 end
 end
  
 if data.raw["assembling-machine"]["gas-refinery-small"] then
 if data.raw["assembling-machine"]["gas-refinery-small"] then 
	data.raw["item"]["gas-refinery-small"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-1.png"
	data.raw["assembling-machine"]["gas-refinery-small"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-1.png"
	data.raw["assembling-machine"]["gas-refinery-small"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-small.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5}
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/gas-refinery/gas-refinery-small-1.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5}
		}}}
		data.raw["assembling-machine"]["gas-refinery-small"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
end
 
 if data.raw["assembling-machine"]["gas-refinery-small-2"] then 
	data.raw["item"]["gas-refinery-small-2"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-2.png"
	data.raw["assembling-machine"]["gas-refinery-small-2"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-2.png"
	
end
 
 
if data.raw["assembling-machine"]["gas-refinery-small-3"] then 
	data.raw["item"]["gas-refinery-small-3"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-3.png"
	data.raw["assembling-machine"]["gas-refinery-small-3"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-3.png"
	data.raw["assembling-machine"]["gas-refinery-small-3"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-small.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5}
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/gas-refinery/gas-refinery-small-3.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5}
		}}}
		data.raw["assembling-machine"]["gas-refinery-small-3"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
end


if data.raw["assembling-machine"]["gas-refinery-small-4"] then 
	data.raw["item"]["gas-refinery-small-4"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-4.png"
	data.raw["assembling-machine"]["gas-refinery-small-4"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-small-4.png"
	data.raw["assembling-machine"]["gas-refinery-small-4"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-small.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5}
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/gas-refinery/gas-refinery-small-4.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5}
		}}}
		
		data.raw["assembling-machine"]["gas-refinery-small-4"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
end
end
 
if data.raw["assembling-machine"]["gas-refinery"] then
if data.raw["assembling-machine"]["gas-refinery"] then  
	data.raw["item"]["gas-refinery"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-1.png"
	data.raw["assembling-machine"]["gas-refinery"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-1.png"
	data.raw["assembling-machine"]["gas-refinery"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/gas-refinery/gas-refinery-1.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		}}}
		data.raw["assembling-machine"]["gas-refinery"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    }
end
 
 
if data.raw["assembling-machine"]["gas-refinery-2"] then 
	data.raw["item"]["gas-refinery-2"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-2.png"
	data.raw["assembling-machine"]["gas-refinery-2"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-2.png"
	data.raw["assembling-machine"]["gas-refinery-2"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/gas-refinery/gas-refinery-2.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		}}}
		data.raw["assembling-machine"]["gas-refinery-2"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    }
end
 

if data.raw["assembling-machine"]["gas-refinery-3"] then 
	data.raw["item"]["gas-refinery-3"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-3.png"
	data.raw["assembling-machine"]["gas-refinery-3"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-3.png"
	data.raw["assembling-machine"]["gas-refinery-3"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/gas-refinery/gas-refinery-3.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		}}}
	data.raw["assembling-machine"]["gas-refinery-3"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    }
		
end


if data.raw["assembling-machine"]["gas-refinery-4"] then 
	data.raw["item"]["gas-refinery-4"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-4.png"
	data.raw["assembling-machine"]["gas-refinery-4"].icon = "__ShinyAngelGFX__/graphics/entity/gas-refinery/icon/gas-refinery-4.png"
	data.raw["assembling-machine"]["gas-refinery-4"].animation = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/gas-refinery/gas-refinery-4.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
		}}}
		data.raw["assembling-machine"]["gas-refinery-4"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    }
end 
end
 
 
if data.raw["assembling-machine"]["advanced-chemical-plant"] then 
if data.raw["assembling-machine"]["advanced-chemical-plant"] then 
	data.raw["item"]["advanced-chemical-plant"].icon = "__ShinyAngelGFX__/graphics/entity/advanced-chemical-plant/icon/advanced-chemical-plant-1.png"
	data.raw["assembling-machine"]["advanced-chemical-plant"].icon = "__ShinyAngelGFX__/graphics/entity/advanced-chemical-plant/icon/advanced-chemical-plant-1.png"
	data.raw["assembling-machine"]["advanced-chemical-plant"].animation = {
		layers = {{ 
		filename = "__angelspetrochem__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
        width = 224,
        height = 224,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0, 0},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant-1.png",
        width = 224,
        height = 224,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0, 0},
		}}}
	data.raw["assembling-machine"]["advanced-chemical-plant"].fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 3} }}
      },
	  {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
	  {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      },
	  --off_when_no_fluid_recipe = true
    }
end


if data.raw["assembling-machine"]["advanced-chemical-plant-2"] then 
	data.raw["item"]["advanced-chemical-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/advanced-chemical-plant/icon/advanced-chemical-plant-2.png"
	data.raw["assembling-machine"]["advanced-chemical-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/advanced-chemical-plant/icon/advanced-chemical-plant-2.png"
	
end
end


if data.raw["assembling-machine"]["angels-air-filter"] then
if data.raw["assembling-machine"]["angels-air-filter"] then  
	data.raw["item"]["angels-air-filter"].icon = "__ShinyAngelGFX__/graphics/entity/air-filter/icon/air-filter-1.png"
	data.raw["assembling-machine"]["angels-air-filter"].icon = "__ShinyAngelGFX__/graphics/entity/air-filter/icon/air-filter-1.png"
	data.raw["assembling-machine"]["angels-air-filter"].animation = {
		layers = {{ 
		filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0.5, -0.5},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/air-filter/air-filter-1.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0.5, -0.5},
		animation_speed = 0.5
		}}}
	data.raw["assembling-machine"]["angels-air-filter"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, 3} }}
      },
    }
end


if data.raw["assembling-machine"]["angels-air-filter-2"] then 
	data.raw["item"]["angels-air-filter-2"].icon = "__ShinyAngelGFX__/graphics/entity/air-filter/icon/air-filter-2.png"
	data.raw["assembling-machine"]["angels-air-filter-2"].icon = "__ShinyAngelGFX__/graphics/entity/air-filter/icon/air-filter-2.png"
	data.raw["assembling-machine"]["angels-air-filter-2"].animation = {
		layers = {{ 
		filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0.5, -0.5},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/air-filter/air-filter-2.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0.5, -0.5},
		animation_speed = 0.5
		}}}
	data.raw["assembling-machine"]["angels-air-filter-2"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, 3} }}
      },
    }
end
end


if data.raw["assembling-machine"]["angels-electrolyser"] then
if data.raw["assembling-machine"]["angels-electrolyser"] then  
data.raw["item"]["angels-electrolyser"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-1.png"
	data.raw["assembling-machine"]["angels-electrolyser"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-1.png"
	data.raw["assembling-machine"]["angels-electrolyser"].animation = {
	north = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-1.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	east = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-1.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	south = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-1.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	west = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-1.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}}
		}
		data.raw["assembling-machine"]["angels-electrolyser"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, -3} }}
      },
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, 3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, 3} }}
      }
    }
end
		

		if data.raw["assembling-machine"]["angels-electrolyser-2"] then 
	data.raw["item"]["angels-electrolyser-2"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-2.png"
	data.raw["assembling-machine"]["angels-electrolyser-2"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-2.png"
	data.raw["assembling-machine"]["angels-electrolyser-2"].animation = {
	north = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-2.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	east = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-2.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	south = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-2.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	west = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-2.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}}
		}
		data.raw["assembling-machine"]["angels-electrolyser-2"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, -3} }}
      },
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, 3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, 3} }}
      }
    }
end


if data.raw["assembling-machine"]["angels-electrolyser-3"] then 
	data.raw["item"]["angels-electrolyser-3"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-3.png"
	data.raw["assembling-machine"]["angels-electrolyser-3"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-3.png"
	data.raw["assembling-machine"]["angels-electrolyser-3"].animation = {
	north = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-3.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	east = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-3.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	south = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-3.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	west = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-3.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}}
		}
		data.raw["assembling-machine"]["angels-electrolyser-3"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, -3} }}
      },
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, 3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, 3} }}
      }
    }
end


if data.raw["assembling-machine"]["angels-electrolyser-4"] then 
	data.raw["item"]["angels-electrolyser-4"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-4.png"
	data.raw["assembling-machine"]["angels-electrolyser-4"].icon = "__ShinyAngelGFX__/graphics/entity/electrolyser/icon/electrolyser-4.png"
	data.raw["assembling-machine"]["angels-electrolyser-4"].animation = {
	north = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-4.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	east = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-4.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	south = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-north-4.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}},
	west = {
		layers = {{
		filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/electrolyser/electrolyser-east-4.png",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5
		}}}
		}
	data.raw["assembling-machine"]["angels-electrolyser-4"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, -3} }}
      },
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, 3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, 3} }}
      }
    }
end
end


if data.raw["assembling-machine"]["liquifier"] then 
if data.raw["assembling-machine"]["liquifier"] then
	data.raw["item"]["liquifier"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-1.png"
	data.raw["assembling-machine"]["liquifier"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-1.png"
	data.raw["assembling-machine"]["liquifier"].animation = {
		filename = "__ShinyAngelGFX__/graphics/entity/liquifier/liquifier-1.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 30,
        shift = {0, 0},
		animation_speed = 0.5,
		}
end


if data.raw["assembling-machine"]["liquifier-2"] then 
	data.raw["item"]["liquifier-2"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-2.png"
	data.raw["assembling-machine"]["liquifier-2"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-2.png"
	
end


if data.raw["assembling-machine"]["liquifier-3"] then 
	data.raw["item"]["liquifier-3"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-3.png"
	data.raw["assembling-machine"]["liquifier-3"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-3.png"
	data.raw["assembling-machine"]["liquifier-3"].animation = {
		filename = "__ShinyAngelGFX__/graphics/entity/liquifier/liquifier-3.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 30,
        shift = {0, 0},
		animation_speed = 0.5,
		}
end


if data.raw["assembling-machine"]["liquifier-4"] then 
	data.raw["item"]["liquifier-4"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-4.png"
	data.raw["assembling-machine"]["liquifier-4"].icon = "__ShinyAngelGFX__/graphics/entity/liquifier/icon/liquifier-4.png"
	data.raw["assembling-machine"]["liquifier-4"].animation = {
		filename = "__ShinyAngelGFX__/graphics/entity/liquifier/liquifier-4.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 30,
        shift = {0, 0},
		animation_speed = 0.5,
		}
end
end



if data.raw["assembling-machine"]["washing-plant-2"] then 
	data.raw["item"]["washing-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/washing-plant/icon/washing-plant-ico-2.png"
	data.raw["assembling-machine"]["washing-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/washing-plant/icon/washing-plant-ico-2.png"
	data.raw["assembling-machine"]["washing-plant-2"].animation = {
		layers = {{
		filename = "__angelsrefining__/graphics/entity/washing-plant/washing-plant.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/washing-plant/washing-plant-2.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		}}}
	data.raw["assembling-machine"]["washing-plant-2"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3, 0} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
    }
end



if data.raw["assembling-machine"]["hydro-plant"] then 
if data.raw["assembling-machine"]["hydro-plant"] then 
	data.raw["item"]["hydro-plant"].icon = "__ShinyAngelGFX__/graphics/entity/hydro-plant/icon/hydro-plant-1.png"
	data.raw["assembling-machine"]["hydro-plant"].icon = "__ShinyAngelGFX__/graphics/entity/hydro-plant/icon/hydro-plant-1.png"
	data.raw["assembling-machine"]["hydro-plant"].animation = {
	layers = {{
		filename = "__angelsrefining__/graphics/entity/hydro-plant/1hydro-plant.png",
		priority = "extra-high",
        width = 288,
        height = 288,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/hydro-plant/1hydro-plant-1.png",
		priority = "extra-high",
        width = 288,
        height = 288,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5
		}}}
		data.raw["assembling-machine"]["hydro-plant"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = hydropipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, -4} }}
      },
	  {
        production_type = "output",
		pipe_picture = hydropipepictures2b(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, 4} }}
      },
	  {
        production_type = "output",
		pipe_picture = hydropipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, 4} }}
      },
    }
end


if data.raw["assembling-machine"]["hydro-plant-2"] then 
	data.raw["item"]["hydro-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/hydro-plant/icon/hydro-plant-2.png"
	data.raw["assembling-machine"]["hydro-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/hydro-plant/icon/hydro-plant-2.png"
	data.raw["assembling-machine"]["hydro-plant-2"].animation = {
	layers = {{
		filename = "__angelsrefining__/graphics/entity/hydro-plant/1hydro-plant.png",
		priority = "extra-high",
        width = 288,
        height = 288,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/hydro-plant/1hydro-plant-2.png",
		priority = "extra-high",
        width = 288,
        height = 288,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5
		}}}
	data.raw["assembling-machine"]["hydro-plant-2"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = hydropipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, -4} }}
      },
	  {
        production_type = "output",
		pipe_picture = hydropipepictures2b(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, 4} }}
      },
	  {
        production_type = "output",
		pipe_picture = hydropipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-2, 4} }}
      },
    }
end
end


if data.raw["assembling-machine"]["ore-processing-machine"] then
if data.raw["assembling-machine"]["ore-processing-machine"] then  
	data.raw["item"]["ore-processing-machine"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-1.png"
	data.raw["assembling-machine"]["ore-processing-machine"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-1.png"
	data.raw["assembling-machine"]["ore-processing-machine"].animation = {
	layers = {{
		filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/ore-processing-machine-1.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
		end
		
if data.raw["assembling-machine"]["ore-processing-machine-2"] then 
	data.raw["item"]["ore-processing-machine-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-2.png"
	data.raw["assembling-machine"]["ore-processing-machine-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-2.png"
	data.raw["assembling-machine"]["ore-processing-machine-2"].animation = {
	layers = {{
		filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/ore-processing-machine-2.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
end
		
		
if data.raw["assembling-machine"]["ore-processing-machine-3"] then 
	data.raw["item"]["ore-processing-machine-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-3.png"
	data.raw["assembling-machine"]["ore-processing-machine-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-3.png"
	data.raw["assembling-machine"]["ore-processing-machine-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/ore-processing-machine-3.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
end

if data.raw["assembling-machine"]["ore-processing-machine-4"] then 
	data.raw["item"]["ore-processing-machine-4"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-4.png"
	data.raw["assembling-machine"]["ore-processing-machine-4"].icon = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/icon/ore-processing-machine-4.png"
	data.raw["assembling-machine"]["ore-processing-machine-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-processing-machine/ore-processing-machine-4.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
end
end



if data.raw["assembling-machine"]["pellet-press"] then 
if data.raw["assembling-machine"]["pellet-press"] then 
	data.raw["item"]["pellet-press"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-1.png"
	data.raw["assembling-machine"]["pellet-press"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-1.png"
	data.raw["assembling-machine"]["pellet-press"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/pellet-press/pellet-press-1.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
end

if data.raw["assembling-machine"]["pellet-press-2"] then 
	data.raw["item"]["pellet-press-2"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-2.png"
	data.raw["assembling-machine"]["pellet-press-2"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-2.png"
	data.raw["assembling-machine"]["pellet-press-2"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/pellet-press/pellet-press-2.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
end

if data.raw["assembling-machine"]["pellet-press-3"] then 
	data.raw["item"]["pellet-press-3"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-3.png"
	data.raw["assembling-machine"]["pellet-press-3"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-3.png"
	data.raw["assembling-machine"]["pellet-press-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/pellet-press/pellet-press-3.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
end

if data.raw["assembling-machine"]["pellet-press-4"] then 
	data.raw["item"]["pellet-press-4"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-4.png"
	data.raw["assembling-machine"]["pellet-press-4"].icon = "__ShinyAngelGFX__/graphics/entity/pellet-press/icon/pellet-press-4.png"
	data.raw["assembling-machine"]["pellet-press-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/pellet-press/pellet-press-4.png",
        width = 160,
        height = 160,
		line_length = 10,
        frame_count = 60,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
end
end


if data.raw["assembling-machine"]["casting-machine"] then 
if data.raw["assembling-machine"]["casting-machine"] then 
	data.raw["item"]["casting-machine"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-1.png"
	data.raw["assembling-machine"]["casting-machine"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-1.png"
	data.raw["recipe"]["casting-machine"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-1.png"
	data.raw["assembling-machine"]["casting-machine"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/casting-machine/casting-machine2-1.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
		data.raw["assembling-machine"]["casting-machine"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      }
    }
		
end



if data.raw["assembling-machine"]["casting-machine-2"] then 
	data.raw["item"]["casting-machine-2"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-2.png"
	data.raw["assembling-machine"]["casting-machine-2"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-2.png"
	data.raw["recipe"]["casting-machine-2"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-2.png"
	data.raw["assembling-machine"]["casting-machine-2"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/casting-machine/casting-machine2-2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
		data.raw["assembling-machine"]["casting-machine-2"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      }
    }
		
end

if data.raw["assembling-machine"]["casting-machine-3"] then 
	data.raw["item"]["casting-machine-3"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-3.png"
	data.raw["assembling-machine"]["casting-machine-3"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-3.png"
	data.raw["recipe"]["casting-machine-3"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-3.png"
	data.raw["assembling-machine"]["casting-machine-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/casting-machine/casting-machine2-3.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
		data.raw["assembling-machine"]["casting-machine-3"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      }
    }
		
end

if data.raw["assembling-machine"]["casting-machine-4"] then 
	data.raw["item"]["casting-machine-4"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-4.png"
	data.raw["assembling-machine"]["casting-machine-4"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-4.png"
	data.raw["recipe"]["casting-machine-4"].icon = "__ShinyAngelGFX__/graphics/entity/casting-machine/icon/casting-machine-4.png"
	data.raw["assembling-machine"]["casting-machine-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/casting-machine/casting-machine2-4.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
		}}}
		data.raw["assembling-machine"]["casting-machine-4"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      }
    }
		
end
end


if data.raw["assembling-machine"]["blast-furnace"] then 
if data.raw["assembling-machine"]["blast-furnace"] then 
	data.raw["item"]["blast-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-1.png"
	data.raw["assembling-machine"]["blast-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-1.png"
	data.raw["recipe"]["blast-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-1.png"
	data.raw["assembling-machine"]["blast-furnace"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/blast-furnace/blast-furnace-1.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
	data.raw["assembling-machine"]["blast-furnace"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      }
    }
		
end



if data.raw["assembling-machine"]["blast-furnace-2"] then 
	data.raw["item"]["blast-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-2.png"
	data.raw["assembling-machine"]["blast-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-2.png"
	data.raw["recipe"]["blast-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-2.png"
	data.raw["assembling-machine"]["blast-furnace-2"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/blast-furnace/blast-furnace-2.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
	data.raw["assembling-machine"]["blast-furnace-2"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["blast-furnace-3"] then 
	data.raw["item"]["blast-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-3.png"
	data.raw["assembling-machine"]["blast-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-3.png"
	data.raw["recipe"]["blast-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-3.png"
	data.raw["assembling-machine"]["blast-furnace-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/blast-furnace/blast-furnace-3.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
	data.raw["assembling-machine"]["blast-furnace-3"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["blast-furnace-4"] then 
	data.raw["item"]["blast-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-4.png"
	data.raw["assembling-machine"]["blast-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-4.png"
	data.raw["recipe"]["blast-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/blast-furnace/icon/blast-furnace-4.png"
	data.raw["assembling-machine"]["blast-furnace-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/blast-furnace/blast-furnace-4.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
	data.raw["assembling-machine"]["blast-furnace-4"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      }
    }
		
end
end


if data.raw["assembling-machine"]["induction-furnace"] then 
if data.raw["assembling-machine"]["induction-furnace"] then 
	data.raw["item"]["induction-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-1.png"
	data.raw["assembling-machine"]["induction-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-1.png"
	data.raw["recipe"]["induction-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-1.png"
	data.raw["assembling-machine"]["induction-furnace"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/induction-furnace/induction-furnace-1.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		}}}
data.raw["assembling-machine"]["induction-furnace"].fluid_boxes =
    {
      
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["induction-furnace-2"] then 
	data.raw["item"]["induction-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-2.png"
	data.raw["assembling-machine"]["induction-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-2.png"
	data.raw["recipe"]["induction-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-2.png"
	data.raw["assembling-machine"]["induction-furnace-2"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/induction-furnace/induction-furnace-2.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		}}}
data.raw["assembling-machine"]["induction-furnace-2"].fluid_boxes =
    {
      
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["induction-furnace-3"] then 
	data.raw["item"]["induction-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-3.png"
	data.raw["assembling-machine"]["induction-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-3.png"
	data.raw["recipe"]["induction-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-3.png"
	data.raw["assembling-machine"]["induction-furnace-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/induction-furnace/induction-furnace-3.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		}}}
data.raw["assembling-machine"]["induction-furnace-3"].fluid_boxes =
    {
      
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["induction-furnace-4"] then 
	data.raw["item"]["induction-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-4.png"
	data.raw["assembling-machine"]["induction-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-4.png"
	data.raw["recipe"]["induction-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/induction-furnace/icon/induction-furnace-4.png"
	data.raw["assembling-machine"]["induction-furnace-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/induction-furnace/induction-furnace-4.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
		animation_speed = 0.5,
		}}}
data.raw["assembling-machine"]["induction-furnace-4"].fluid_boxes =
    {
      
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
		
end
end


if data.raw["assembling-machine"]["angels-chemical-furnace"] then
if data.raw["assembling-machine"]["angels-chemical-furnace"] then 
	data.raw["item"]["angels-chemical-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-1.png"
	data.raw["assembling-machine"]["angels-chemical-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-1.png"
	data.raw["recipe"]["angels-chemical-furnace"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-1.png"
	data.raw["assembling-machine"]["angels-chemical-furnace"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/chemical-furnace-1.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
data.raw["assembling-machine"]["angels-chemical-furnace"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["angels-chemical-furnace-2"] then 
	data.raw["item"]["angels-chemical-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-2.png"
	data.raw["assembling-machine"]["angels-chemical-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-2.png"
	data.raw["recipe"]["angels-chemical-furnace-2"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-2.png"
	data.raw["assembling-machine"]["angels-chemical-furnace-2"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/chemical-furnace-2.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
data.raw["assembling-machine"]["angels-chemical-furnace-2"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["angels-chemical-furnace-3"] then 
	data.raw["item"]["angels-chemical-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-3.png"
	data.raw["assembling-machine"]["angels-chemical-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-3.png"
	data.raw["recipe"]["angels-chemical-furnace-3"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-3.png"
	data.raw["assembling-machine"]["angels-chemical-furnace-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/chemical-furnace-3.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
data.raw["assembling-machine"]["angels-chemical-furnace-3"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    }
		
end


if data.raw["assembling-machine"]["angels-chemical-furnace-4"] then 
	data.raw["item"]["angels-chemical-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-4.png"
	data.raw["assembling-machine"]["angels-chemical-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-4.png"
	data.raw["recipe"]["angels-chemical-furnace-4"].icon = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/icon/chemical-furnace-4.png"
	data.raw["assembling-machine"]["angels-chemical-furnace-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/chemical-furnace/chemical-furnace-4.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
		}}}
data.raw["assembling-machine"]["angels-chemical-furnace-4"].fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    }
		
end
end


if data.raw["assembling-machine"]["sintering-oven"] then 
if data.raw["assembling-machine"]["sintering-oven"] then 
	data.raw["item"]["sintering-oven"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-1.png"
	data.raw["assembling-machine"]["sintering-oven"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-1.png"
	data.raw["recipe"]["sintering-oven"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-1.png"
	data.raw["assembling-machine"]["sintering-oven"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/sintering-oven/sintering-oven-1.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		}}}
end


if data.raw["assembling-machine"]["sintering-oven-2"] then 
	data.raw["item"]["sintering-oven-2"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-2.png"
	data.raw["assembling-machine"]["sintering-oven-2"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-2.png"
	data.raw["recipe"]["sintering-oven-2"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-2.png"
	data.raw["assembling-machine"]["sintering-oven-2"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/sintering-oven/sintering-oven-2.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		}}}
end


if data.raw["assembling-machine"]["sintering-oven-3"] then 
	data.raw["item"]["sintering-oven-3"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-3.png"
	data.raw["assembling-machine"]["sintering-oven-3"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-3.png"
	data.raw["recipe"]["sintering-oven-3"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-3.png"
	data.raw["assembling-machine"]["sintering-oven-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/sintering-oven/sintering-oven-3.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		}}}
end
end

if data.raw["assembling-machine"]["sintering-oven-4"] then 
	data.raw["item"]["sintering-oven-4"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-4.png"
	data.raw["assembling-machine"]["sintering-oven-4"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-4.png"
	data.raw["recipe"]["sintering-oven-4"].icon = "__ShinyAngelGFX__/graphics/entity/sintering-oven/icon/sintering-oven-4.png"
	data.raw["assembling-machine"]["sintering-oven-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/sintering-oven/sintering-oven-4.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
		animation_speed = 0.5,
		}}}
end

if data.raw["assembling-machine"]["powder-mixer"] then 
if data.raw["assembling-machine"]["powder-mixer"] then 
	data.raw["item"]["powder-mixer"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-1.png"
	data.raw["assembling-machine"]["powder-mixer"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-1.png"
	data.raw["assembling-machine"]["powder-mixer"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/powder-mixer/powder-mixer-1.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		}}}
end		



if data.raw["assembling-machine"]["powder-mixer-2"] then 
	data.raw["item"]["powder-mixer-2"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-2.png"
	data.raw["assembling-machine"]["powder-mixer-2"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-2.png"
	data.raw["assembling-machine"]["powder-mixer-2"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/powder-mixer/powder-mixer-2.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		}}}
end		


if data.raw["assembling-machine"]["powder-mixer-3"] then 
	data.raw["item"]["powder-mixer-3"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-3.png"
	data.raw["assembling-machine"]["powder-mixer-3"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-3.png"
	data.raw["assembling-machine"]["powder-mixer-3"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/powder-mixer/powder-mixer-3.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		}}}
end		


if data.raw["assembling-machine"]["powder-mixer-4"] then 
	data.raw["item"]["powder-mixer-4"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-4.png"
	data.raw["assembling-machine"]["powder-mixer-4"].icon = "__ShinyAngelGFX__/graphics/entity/powder-mixer/icon/powder-mixer-4.png"
	data.raw["assembling-machine"]["powder-mixer-4"].animation = {
	layers = {{
filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/powder-mixer/powder-mixer-4.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		scale = 0.5,
		animation_speed = 0.5,
		}}}
end		
end		
end		
		
		
		
if data.raw["assembling-machine"]["ore-crusher"] then 
	data.raw["item"]["ore-crusher"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-1.png"
	data.raw["assembling-machine"]["ore-crusher"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-1.png"
	data.raw["recipe"]["ore-crusher"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-1.png"
	data.raw["assembling-machine"]["ore-crusher"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-crusher/1ore-crusher.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, -0.25},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-crusher/1ore-crusher-1.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, -0.25},
		animation_speed = 0.5
		}}}
end



if data.raw["assembling-machine"]["ore-crusher-2"] then 
	data.raw["item"]["ore-crusher-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-2.png"
	data.raw["assembling-machine"]["ore-crusher-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-2.png"
	data.raw["recipe"]["ore-crusher-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-2.png"
	data.raw["assembling-machine"]["ore-crusher-2"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-crusher/1ore-crusher.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, -0.25},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-crusher/1ore-crusher-2.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, -0.25},
		animation_speed = 0.5
		}}}
end


if data.raw["assembling-machine"]["ore-crusher-3"] then 
	data.raw["item"]["ore-crusher-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-3.png"
	data.raw["assembling-machine"]["ore-crusher-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-3.png"
	data.raw["recipe"]["ore-crusher-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-crusher/icon/ore-crusher-3.png"
	data.raw["assembling-machine"]["ore-crusher-3"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-crusher/1ore-crusher.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, -0.25},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-crusher/1ore-crusher-3.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, -0.25},
		animation_speed = 0.5
		}}}
end



if data.raw["assembling-machine"]["ore-sorting-facility"] then 
	data.raw["item"]["ore-sorting-facility"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-1.png"
	data.raw["assembling-machine"]["ore-sorting-facility"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-1.png"
	data.raw["recipe"]["ore-sorting-facility"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-1.png"
	data.raw["assembling-machine"]["ore-sorting-facility"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/1ore-sorting-facility-1.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		}}}
end


if data.raw["assembling-machine"]["ore-sorting-facility-2"] then 
	data.raw["item"]["ore-sorting-facility-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-2.png"
	data.raw["assembling-machine"]["ore-sorting-facility-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-2.png"
	data.raw["recipe"]["ore-sorting-facility-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-2.png"
	data.raw["assembling-machine"]["ore-sorting-facility-2"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/1ore-sorting-facility-2.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		}}}
end

if data.raw["assembling-machine"]["ore-sorting-facility-3"] then 
	data.raw["item"]["ore-sorting-facility-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-3.png"
	data.raw["assembling-machine"]["ore-sorting-facility-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-3.png"
	data.raw["recipe"]["ore-sorting-facility-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-3.png"
	data.raw["assembling-machine"]["ore-sorting-facility-3"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/1ore-sorting-facility-3.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		}}}
end

if data.raw["assembling-machine"]["ore-sorting-facility-4"] then 
	data.raw["item"]["ore-sorting-facility-4"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-4.png"
	data.raw["assembling-machine"]["ore-sorting-facility-4"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-4.png"
	data.raw["recipe"]["ore-sorting-facility-4"].icon = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/icon/ore-sorting-facility-4.png"
	data.raw["assembling-machine"]["ore-sorting-facility-4"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-sorting-facility/1ore-sorting-facility-4.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 40,
		line_length = 8,
        shift = {0.5, 0},
		animation_speed = 0.5
		}}}
end





if data.raw["assembling-machine"]["ore-floatation-cell"] then 
	data.raw["item"]["ore-floatation-cell"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-1.png"
	data.raw["assembling-machine"]["ore-floatation-cell"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-1.png"
	data.raw["recipe"]["ore-floatation-cell"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-1.png"
	data.raw["assembling-machine"]["ore-floatation-cell"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/1ore-floatation-cell.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, 0.7},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/1ore-floatation-cell-1.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, 0.7},
		animation_speed = 0.5
		}}}
data.raw["assembling-machine"]["ore-floatation-cell"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = floatationpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      }
    }
end


if data.raw["assembling-machine"]["ore-floatation-cell-2"] then 
	data.raw["item"]["ore-floatation-cell-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-2.png"
	data.raw["assembling-machine"]["ore-floatation-cell-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-2.png"
	data.raw["recipe"]["ore-floatation-cell-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-2.png"
	data.raw["assembling-machine"]["ore-floatation-cell-2"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/1ore-floatation-cell.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, 0.7},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/1ore-floatation-cell-2.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, 0.7},
		animation_speed = 0.5
		}}}
data.raw["assembling-machine"]["ore-floatation-cell-2"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = floatationpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      }
    }
end


if data.raw["assembling-machine"]["ore-floatation-cell-3"] then 
	data.raw["item"]["ore-floatation-cell-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-3.png"
	data.raw["assembling-machine"]["ore-floatation-cell-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-3.png"
	data.raw["recipe"]["ore-floatation-cell-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/icon/ore-floatation-cell-3.png"
	data.raw["assembling-machine"]["ore-floatation-cell-3"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/1ore-floatation-cell.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, 0.7},
		animation_speed = 0.5
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-floatation-cell/1ore-floatation-cell-3.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 16,
		line_length = 4,
        shift = {0.45, 0.7},
		animation_speed = 0.5
		}}}
data.raw["assembling-machine"]["ore-floatation-cell-3"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = floatationpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      }
    }
end



if data.raw["assembling-machine"]["ore-leaching-plant"] then 
	data.raw["item"]["ore-leaching-plant"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-1.png"
	data.raw["assembling-machine"]["ore-leaching-plant"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-1.png"
	data.raw["recipe"]["ore-leaching-plant"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-1.png"
	data.raw["assembling-machine"]["ore-leaching-plant"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/1ore-leaching-plant.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/1ore-leaching-plant-1.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
		}}}
data.raw["assembling-machine"]["ore-leaching-plant"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = leachingpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
    }
end


if data.raw["assembling-machine"]["ore-leaching-plant-2"] then 
	data.raw["item"]["ore-leaching-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-2.png"
	data.raw["assembling-machine"]["ore-leaching-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-2.png"
	data.raw["recipe"]["ore-leaching-plant-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-2.png"
	data.raw["assembling-machine"]["ore-leaching-plant-2"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/1ore-leaching-plant.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/1ore-leaching-plant-2.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
		}}}
data.raw["assembling-machine"]["ore-leaching-plant-2"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = leachingpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
    }
end


if data.raw["assembling-machine"]["ore-leaching-plant-3"] then 
	data.raw["item"]["ore-leaching-plant-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-3.png"
	data.raw["assembling-machine"]["ore-leaching-plant-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-3.png"
	data.raw["recipe"]["ore-leaching-plant-3"].icon = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/icon/ore-leaching-plant-3.png"
	data.raw["assembling-machine"]["ore-leaching-plant-3"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/1ore-leaching-plant.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-leaching-plant/1ore-leaching-plant-3.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
		}}}
data.raw["assembling-machine"]["ore-leaching-plant-3"].fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = leachingpipepicturesb(),
        pipe_covers = pipecoverspictures2(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
    }
end


if data.raw["assembling-machine"]["ore-refinery"] then 
	data.raw["item"]["ore-refinery"].icon = "__ShinyAngelGFX__/graphics/entity/ore-refinery/icon/ore-refinery-1.png"
	data.raw["assembling-machine"]["ore-refinery"].icon = "__ShinyAngelGFX__/graphics/entity/ore-refinery/icon/ore-refinery-1.png"
	data.raw["recipe"]["ore-refinery"].icon = "__ShinyAngelGFX__/graphics/entity/ore-refinery/icon/ore-refinery-1.png"
	data.raw["assembling-machine"]["ore-refinery"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-refinery/1ore-refinery.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-refinery/1ore-refinery-1.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
		}}}
end	
		
		
		
if data.raw["assembling-machine"]["ore-refinery-2"] then 
	data.raw["item"]["ore-refinery-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-refinery/icon/ore-refinery-2.png"
	data.raw["assembling-machine"]["ore-refinery-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-refinery/icon/ore-refinery-2.png"
	data.raw["recipe"]["ore-refinery-2"].icon = "__ShinyAngelGFX__/graphics/entity/ore-refinery/icon/ore-refinery-2.png"
	data.raw["assembling-machine"]["ore-refinery-2"].animation = {
	layers = {{
filename = "__angelsrefining__/graphics/entity/ore-refinery/1ore-refinery.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
		},{
		filename = "__ShinyAngelGFX__/graphics/entity/ore-refinery/1ore-refinery-2.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
		}}}
end	




