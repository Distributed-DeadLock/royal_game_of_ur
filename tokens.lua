minetest.register_node("royal_game_of_ur:rgou_token_white", {
	description = "Royal Game of Ur - Game Token - White",
	tiles = {
		"royal_game_of_ur_stone-white-top.png",
		"royal_game_of_ur_stone-white-sides.png",
		"royal_game_of_ur_stone-white-sides.png",
		"royal_game_of_ur_stone-white-sides.png",
		"royal_game_of_ur_stone-white-sides.png",
		"royal_game_of_ur_stone-white-sides.png"
	},
	drawtype = "nodebox",
	is_ground_content = false,
	sunlight_propagates = true,
    groups = {cracky = 3, oddly_breakable_by_hand = 3, dig_immediate = 3},
	paramtype = "light",
    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0, 0.0625, 0.125, 0.0625, 0.375},
			{-0.125, 0, -0.375, 0.125, 0.0625, -0.0625},
			{0.0625, 0, -0.125, 0.375, 0.0625, 0.125},
			{-0.375, 0, -0.125, -0.0625, 0.0625, 0.125},
			{-0.3125, 0, -0.3125, 0.3125, 0.0625, -0.25},
			{-0.3125, 0, 0.25, 0.3125, 0.0625, 0.3125},
			{0.25, 0, -0.3125, 0.3125, 0.0625, 0.3125},
			{-0.3125, 0, -0.3125, -0.25, 0.0625, 0.3125},
			{-0.375, -0.0625, -0.3125, 0.375, 0, 0.3125},
			{-0.3125, -0.0625, -0.375, 0.3125, 0, 0.375},
			{-0.375, -0.4375, -0.375, 0.375, -0.0625, 0.375},
			{-0.4375, -0.375, -0.25, 0.4375, -0.125, 0.25},
			{-0.25, -0.375, -0.4375, 0.25, -0.125, 0.4375},
			{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
		}
	}
})

minetest.register_node("royal_game_of_ur:rgou_token_black", {
	description = "Royal Game of Ur - Game Token - Black",
	tiles = {
		"royal_game_of_ur_stone-black-top.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_stone-black-sides.png"
	},
	drawtype = "nodebox",
	is_ground_content = false,
	sunlight_propagates = true,
    groups = {cracky = 3, oddly_breakable_by_hand = 3, dig_immediate = 3},
	paramtype = "light",
    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0, 0.0625, 0.125, 0.0625, 0.375},
			{-0.125, 0, -0.375, 0.125, 0.0625, -0.0625},
			{0.0625, 0, -0.125, 0.375, 0.0625, 0.125},
			{-0.375, 0, -0.125, -0.0625, 0.0625, 0.125},
			{-0.3125, 0, -0.3125, 0.3125, 0.0625, -0.25},
			{-0.3125, 0, 0.25, 0.3125, 0.0625, 0.3125},
			{0.25, 0, -0.3125, 0.3125, 0.0625, 0.3125},
			{-0.3125, 0, -0.3125, -0.25, 0.0625, 0.3125},
			{-0.375, -0.0625, -0.3125, 0.375, 0, 0.3125},
			{-0.3125, -0.0625, -0.375, 0.3125, 0, 0.375},
			{-0.375, -0.4375, -0.375, 0.375, -0.0625, 0.375},
			{-0.4375, -0.375, -0.25, 0.4375, -0.125, 0.25},
			{-0.25, -0.375, -0.4375, 0.25, -0.125, 0.4375},
			{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
		}
	}
})