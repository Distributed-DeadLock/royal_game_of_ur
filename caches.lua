local startcachenodebox = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.375, -0.4375, -0.375, 0.375, 0.4375, 0.375},
			{-0.3125, -0.4375, -0.4375, 0.3125, 0.375, -0.3125},
			{-0.3125, -0.4375, 0.375, 0.3125, 0.375, 0.4375},
			{-0.4375, -0.4375, -0.3125, -0.375, 0.375, 0.3125},
			{0.375, -0.4375, -0.3125, 0.4375, 0.375, 0.3125},
			{-0.3125, 0.4375, -0.3125, 0.3125, 0.5, 0.3125},
		}
	}

local endcachenodebox = {
		type = "fixed",
		fixed = {
			{-0.375, -0.4375, 0.4375, -0.125, 0.4375, 0.5},
			{0.125, -0.4375, 0.4375, 0.375, 0.4375, 0.5},
			{-0.5, -0.4375, 0.125, -0.4375, 0.4375, 0.375},
			{-0.5, -0.4375, -0.375, -0.4375, 0.4375, -0.125},
			{-0.375, -0.4375, -0.5, -0.125, 0.4375, -0.4375},
			{0.125, -0.4375, -0.5, 0.375, 0.4375, -0.4375},
			{0.4375, -0.4375, -0.375, 0.5, 0.4375, -0.125},
			{0.4375, -0.4375, 0.125, 0.5, 0.4375, 0.375},
			{-0.375, -0.4375, -0.3125, 0.375, 0.3125, 0.3125},
			{-0.3125, -0.4375, -0.375, 0.3125, 0.3125, 0.375},
			{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, -0.4375, -0.4375, 0.5, 0.4375},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, -0.4375}, 
			{0.4375, 0.4375, -0.4375, 0.5, 0.5, 0.4375},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		}
	}

minetest.register_node("royal_game_of_ur:rgou_startcache_white", {
	description = "Royal Game of Ur - StartCache - White",
	is_ground_content = false,
	groups = {choppy = 3},
	tiles = {{name = "royal_game_of_ur_wsc_top.png", color = "white"},
		{name = "royal_game_of_ur_stone-white-sides.png", color = "white"}, 
		{name = "royal_game_of_ur_wsc_side.png", color = "white"}},
	overlay_tiles = {{name = "royal_game_of_ur_wsc_top_o.png", tileable_vertical = false},
		"",
		{name = "royal_game_of_ur_wsc_side_o.png", tileable_vertical = false}},
	-- Global color, used in inventory
	color = "white",
	-- Palette in the world
	paramtype2 = "color",
	palette = "royal_game_of_ur_wsc_colors.png",
	-- set param2(the content of the cache) to 7(full) when placed
	on_construct = function(pos)
		local node = minetest.get_node(pos)
		node.param2 = 7
		minetest.swap_node(pos, node)
	end,
	on_rightclick = function(pos)
		local node = minetest.get_node(pos)
		local nodeabove = minetest.get_node({x = (pos.x), y = (pos.y + 1), z = (pos.z)})
		if ((node.param2 > 0) and (nodeabove.name == "air" )) then
			node.param2 = (node.param2 - 1)
			minetest.set_node({x = (pos.x), y = (pos.y + 1), z = (pos.z)}, {name="royal_game_of_ur:rgou_token_white"})
			minetest.swap_node(pos, node)
		end
	end,
	drawtype = "nodebox",
	paramtype = "light",
	node_box = startcachenodebox
})

minetest.register_node("royal_game_of_ur:rgou_startcache_black", {
	description = "Royal Game of Ur - StartCache - Black",
	is_ground_content = false,
	groups = {choppy = 3},
	tiles = {{name = "royal_game_of_ur_bsc_top.png", color = "white"},
		{name = "royal_game_of_ur_stone-black-sides.png", color = "white"}, 
		{name = "royal_game_of_ur_bsc_side.png", color = "white"}},
	overlay_tiles = {{name = "royal_game_of_ur_wsc_top_o.png", tileable_vertical = false},
		"",
		{name = "royal_game_of_ur_wsc_side_o.png", tileable_vertical = false}},
	-- Global color, used in inventory
	color = "black",
	-- Palette in the world
	paramtype2 = "color",
	palette = "royal_game_of_ur_bsc_colors.png",
	-- set param2(the content of the cache) to 7(full) when placed
	on_construct = function(pos)
		local node = minetest.get_node(pos)
		node.param2 = 7
		minetest.swap_node(pos, node)
	end,
	on_rightclick = function(pos)
		local node = minetest.get_node(pos)
		local nodeabove = minetest.get_node({x = (pos.x), y = (pos.y + 1), z = (pos.z)})
		if ((node.param2 > 0) and (nodeabove.name == "air" )) then
			node.param2 = (node.param2 - 1)
			minetest.set_node({x = (pos.x), y = (pos.y + 1), z = (pos.z)}, {name="royal_game_of_ur:rgou_token_black"})
			minetest.swap_node(pos, node)
		end
	end,
	drawtype = "nodebox",
	paramtype = "light",
	node_box = startcachenodebox
})

minetest.register_node("royal_game_of_ur:rgou_endcache_white", {
	description = "Royal Game of Ur - EndCache - White",
	is_ground_content = false,
	groups = {choppy = 3},
	tiles = {{name = "royal_game_of_ur_wec_top.png", color = "white"},
		{name = "royal_game_of_ur_stone-white-sides.png", color = "white"}, 
		{name = "royal_game_of_ur_wec_side.png", color = "white"}},
	overlay_tiles = {{name = "royal_game_of_ur_wec_top_o.png", tileable_vertical = false},
		"",
		{name = "royal_game_of_ur_wec_side_o.png", tileable_vertical = false}},
	-- Global color, used in inventory
	color = "white",
	-- Palette in the world
	paramtype2 = "color",
	palette = "royal_game_of_ur_wsc_colors.png",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = endcachenodebox
	})
	
	
	