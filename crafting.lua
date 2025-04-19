
minetest.register_craft({
	output = 'clothing:yarn_spool_empty',
	recipe = {
		{'group:stick'},
		{'stairs:slab_wood'},
	},
})

minetest.register_craft({
  output = 'clothing:bone_needle',
  recipe = {
    {'group:bone'},
    {'group:bone'},
  },
})

minetest.register_craft({
	output = 'clothing:spinning_machine',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'farming:string', 'group:wood'},
		{'group:wood', "group:wood", 'group:wood'},
	},
})

minetest.register_craft({
	output = 'clothing:loom',
	recipe = {
		{'group:stick', 'default:pinewood', 'group:stick'},
		{'group:stick', 'default:pinewood', 'group:stick'},
		{'default:pinewood', "default:pinewood", 'default:pinewood'},
	},
})

minetest.register_craft({
	output = 'clothing:dye_machine_empty',
	recipe = {
		{'group:wood', 'group:stick', 'group:wood'},
		{'group:wood', 'group:stick', 'group:wood'},
		{'group:wood', "group:wood", 'group:wood'},
	},
})

minetest.register_craft({
	output = 'clothing:sewing_table',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:stick', 'clothing:bone_needle', 'group:stick'},
		{'group:stick', 'clothing:bone_needle', 'group:stick'},
	},
})

--[[
if clothing.have_farming then
  minetest.clear_craft({
    --output = "farming:string 2"
    recipe = {
      {"farming:cotton"},
      {"farming:cotton"},
    },
  })
  minetest.register_craft({
    output = "farming:string",
    recipe = {
      {"clothing:yarn_spool_white"},
      {"clothing:yarn_spool_white"},
    },
    replacements = {
      {"clothing:yarn_spool_white", "clothing:yarn_spool_empty"},
      {"clothing:yarn_spool_white", "clothing:yarn_spool_empty"},
    },
  })
end--]]

if minetest.registered_items["farming:hemp_fibre"] then
  minetest.clear_craft({
    --output = "farming:cotton 3"
    recipe = {
      {"farming:hemp_fibre"},
      {"farming:hemp_fibre"},
      {"farming:hemp_fibre"},
    },
  })
  
end


for color, data in pairs(clothing.colors) do
  minetest.register_craft({
    type = "shapeless",
    output = "clothing:gloves_"..color,
    recipe = {"clothing:glove_right_"..color,
              "clothing:glove_left_"..color},
  })
  minetest.register_craft({
    type = "shapeless",
    output = "clothing:glove_right_"..color,
    recipe = {"clothing:gloves_"..color},
    replacements = {
      {"clothing:gloves_"..color, "clothing:glove_left_"..color},
    },
  })
end
