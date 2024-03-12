
if clothing.have_skinsdb then
  minetest.register_on_mods_loaded(function()
      if minetest.settings:get_bool("clothing_character", true) then
        skins.default = "clothing_skin"
      end
      -- unclothed male
      local clothing_skin = skins.new("clothing_skin")
      clothing_skin:set_texture("clothing_character_male.png")
      clothing_skin:set_meta("format", '1.0')
      clothing_skin:set_meta("_sort_id", 0)
      clothing_skin:set_meta("name", "Unclothed male")
      
      -- unclothed female
      local clothing_skin = skins.new("clothing_skin_female")
      clothing_skin:set_texture("clothing_character_female.png")
      clothing_skin:set_meta("format", '1.0')
      clothing_skin:set_meta("_sort_id", 0)
      clothing_skin:set_meta("name", "Unclothed female")
    end)
end
