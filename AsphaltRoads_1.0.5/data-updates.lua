require "config"

-- if Bio_Industries is present:
if use_BioIndustries_items and data.raw["item"]["stone-crushed"] then
	data.raw["recipe"]["Arci-asphalt"].ingredients[3] = {type="item", name="stone-crushed", amount=8}
else 
    data.raw["recipe"]["Arci-asphalt"].ingredients[3] = {type="item", name="stone-brick", amount=4}
end 