local V = materials.vanilla_elements
local M = materials.materials

--[[ Elements ]]--
M.sodium = V.sodium:register_material({
	description = S"material.element.na",
	types = {"dust"},
})

M.aluminium = V.aluminium:register_material({
	description = S"material.element.al",
	types = {"ingot", "dust"},
})

M.silicon = V.silicon:register_material({
	description = S"material.element.si",
	types = {"ingot", "dust", "plate"},
})

M.titanium = V.titanium:register_material({
	description = S"material.element.ti",
	types = {"ingot", "dust", "plate"},
})

M.iron = V.iron:register_material({
	description = S"material.element.fe",
	types = {"ingot", "dust"},
})

M.nickel = V.nickel:register_material({
	description = S"material.element.ni",
	types = {"ingot", "dust"},
})

M.copper = V.copper:register_material({
	description = S"material.element.cu",
	types = {"ingot", "dust", "rod"},
})

M.silver = V.silver:register_material({
	description = S"material.element.ag",
	types = {"ingot", "dust", "plate"},
})

M.tin = V.tin:register_material({
	description = S"material.element.sn",
	types = {"ingot", "dust"},
})

M.rhenium = V.rhenium:register_material({
	description = S"material.element.re",
	types = {"ingot", "dust"},
})

M.platinum = V.platinum:register_material({
	description = S"material.element.pt",
	types = {"ingot", "dust", "catalyst"},
})

--[[ Compounds ]]--
-- Rhenium Alloy
M.rhenium_alloy = materials.new_material("rhenium_alloy", {
	formula = {{"titanium", 11}, {"rhenium", 2}, {"platinum", 5}},
	types = {"ingot", "dust", "rod"},
	description = S"material.alloy.rhenium"
}):generate_data("melting_point"):generate_interactions():generate_recipe("trinium:alloysmelting_tower")

-- Cupronickel
M.cupronickel = materials.new_material("cupronickel", {
	formula = {{"copper", 3}, {"nickel", 2}},
	types = {"ingot", "dust"},
	description = S"material.alloy.cupronickel"
}):generate_data("melting_point"):generate_interactions():generate_recipe("trinium:alloysmelting_tower")
	:generate_recipe("trinium:crude_alloyer")

-- Silver Alloy
M.silver_alloy = materials.new_material("silver_alloy", {
	formula = {{"silver", 2}, {"tennantite", 5}},
	types = {"ingot", "dust", "wire"},
	description = S"material.alloy.silver",
	data = {melting_point = 1563},
}):generate_interactions():generate_recipe("trinium:alloysmelting_tower"):generate_recipe("trinium:crude_alloyer")
trinium.dump(materials.materials_reg.silver_alloy.color_string)

-- Bronze
M.bronze = materials.new_material("bronze", {
	formula = {{"copper", 4}, {"tin", 1}},
	types = {"ingot", "dust"},
	description = S"material.alloy.bronze",
}):generate_data("melting_point"):generate_interactions():generate_recipe("trinium:alloysmelting_tower")
	:generate_recipe("trinium:crude_alloyer")