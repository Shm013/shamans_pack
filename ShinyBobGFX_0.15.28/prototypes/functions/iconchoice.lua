mk_level = {"-1","-2","-3","-4","-5","-6",""}
path = "__ShinyBobGFX__/graphics/entity/"
ipath = "__ShinyBobGFX__/graphics/icons/"
apath = "__ShinyBobGFX__/graphics/icons/old-assembling/"
powerbar = ""

if settings.startup["add-powerbars"].value == true then
powerbar = 1
end

-- function powerbar(name,btype,top)

-- for mk = 1,top do
-- local mk_level = {"","-2","-3","-4","-5","-6",""}
-- local entity = data.raw[btype][name..string.lower(mk_level[mk])]
-- local item = data.raw["item"][name..string.lower(mk_level[mk])]
-- local recipe = data.raw["recipe"][name..string.lower(mk_level[mk])]
-- if entity then
-- if top == 6 then mk = mk-1 end
-- entity.icons.icon[2] = table.deepcopy(entity.icon.layer[1])
-- item.icons.icon[2] = table.deepcopy(item.icon.layer[1])
-- recipe.icons.icon[2] = table.deepcopy(recipe.icon.layer[1])
-- entity.icons.icon[2] = "__ShinyBobGFX__/graphics/icons/num-"..mk..".png"
-- item.icons.icon[2] = "__ShinyBobGFX__/graphics/icons/num-"..mk..".png"
-- recipe.icons.icon[2] = "__ShinyBobGFX__/graphics/icons/num-"..mk..".png"
-- end
-- end
-- end

function bobicon(name,btype,bot,top,off)
for mk = bot,top do
local complete = name..string.lower(mk_level[mk])
local entity = data.raw[btype][complete]
local item = data.raw["item"][complete]
local recipe = data.raw["recipe"][complete]
if mk == 1 then
	if not entity then entity = data.raw[btype][name] end
	if not item then item = data.raw["item"][name] end
	if not recipe then recipe = data.raw["recipe"][name] end
end
if powerbar == 1 then
	if entity then entity.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
	if item then item.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
	if recipe then recipe.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
else
	if entity then entity.icon = ipath..complete..".png" end
	if item then item.icon = ipath..complete..".png" end
	if recipe then recipe.icon = ipath..complete..".png" end
end
end
end

function bobiconspec(name,btype,bot,top,off)
for mk = bot,top do
local complete = name..string.lower(mk_level[mk])
local entity = data.raw[btype][complete]
local item = data.raw["item-with-entity-data"][complete]
local recipe = data.raw["recipe"][complete]
if mk == 1 then
	if not entity then entity = data.raw[btype][name] end
	if not item then item = data.raw["item-with-entity-data"][name] end
	if not recipe then recipe = data.raw["recipe"][name] end
end
if powerbar == 1 then
	if entity then entity.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
	if item then item.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
	if recipe then recipe.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
else
	if entity then entity.icon = ipath..complete..".png" end
	if item then item.icon = ipath..complete..".png" end
	if recipe then recipe.icon = ipath..complete..".png" end
end
end
end


function bobitem(name,bot,top,off)
for mk = bot,top do
local complete = name..string.lower(mk_level[mk])
local item = data.raw["item"][complete]
local recipe = data.raw["recipe"][complete]
if mk == 1 then
	if not item then item = data.raw["item"][name] end
	if not recipe then recipe = data.raw["recipe"][name] end
end
if powerbar == 1 then
	if item then item.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
	if recipe then recipe.icons = {{icon = ipath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
else
	if item then item.icon = ipath..complete..".png" end
	if recipe then recipe.icon = ipath..complete..".png" end
end
end
end


function bobiconNA(name,btype,bot,top,off)
for mk = bot,top do
local complete = name..string.lower(mk_level[mk])
local entity = data.raw[btype][complete]
local item = data.raw["item"][complete]
local recipe = data.raw["recipe"][complete]
if mk == 1 then
	if not entity then entity = data.raw[btype][name] end
	if not item then item = data.raw["item"][name] end
	if not recipe then recipe = data.raw["recipe"][name] end
end
if powerbar == 1 then
	if entity then entity.icons = {{icon = apath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
	if item then item.icons = {{icon = apath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
	if recipe then recipe.icons = {{icon = apath..complete..".png"},{icon = ipath.."num-"..mk-off..".png"}} end
else
	if entity then entity.icon = apath..complete..".png" end
	if item then item.icon = apath..complete..".png" end
	if recipe then recipe.icon = apath..complete..".png" end
end
end
end


function iconfix(name,btype,bot,top,off)
for mk = bot,top do
local complete = name..string.lower(mk_level[mk])
local entity = data.raw[btype][complete]
local item = data.raw["item"][complete]
local recipe = data.raw["recipe"][complete]
if not entity then entity = data.raw[btype][name] end
if not item then item = data.raw["item"][name] end
if not recipe then recipe = data.raw["recipe"][name] end
	
	if entity then entity.icon = ipath..complete..".png" end
	if item then item.icon = ipath..complete..".png" end
	if recipe then recipe.icon = ipath..complete..".png" end
end
end



