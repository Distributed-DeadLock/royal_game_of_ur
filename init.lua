-- the Royal Game of Ur
-- https://en.wikipedia.org/wiki/Royal_Game_of_Ur


-- nodes to create the game board

minetest.register_node("royal_game_of_ur:rgou_rosetta", {
    description = "Royal Game of Ur - Boardpiece - Rosetta",
    tiles = {
        "royal_game_of_ur_board_top_rosetta.png",
        "royal_game_of_ur_board_bottom_all.png",
        "royal_game_of_ur_board_side_14.png",
        "royal_game_of_ur_board_side_06.png",
        "royal_game_of_ur_board_side_03.png",
        "royal_game_of_ur_board_side_20.png"
    },
    is_ground_content = false,
    groups = {choppy = 3},
    paramtype2 = "facedir",
	light_source = 1
})

minetest.register_node("royal_game_of_ur:rgou_twelve_dots", {
    description = "Royal Game of Ur - Boardpiece - Twelve Dots",
    tiles = {
        "royal_game_of_ur_board_top_twelve_dots.png",
        "royal_game_of_ur_board_bottom_all.png",
        "royal_game_of_ur_board_side_12.png",
        "royal_game_of_ur_board_side_05.png",
        "royal_game_of_ur_board_side_18.png",
        "royal_game_of_ur_board_side_17.png"
    },
    is_ground_content = false,
    groups = {choppy = 3},
    paramtype2 = "facedir",
	light_source = 1
})

minetest.register_node("royal_game_of_ur:rgou_four_eyes", {
    description = "Royal Game of Ur - Boardpiece - Four Eyes",
    tiles = {
        "royal_game_of_ur_board_top_four_eyes.png",
        "royal_game_of_ur_board_bottom_all.png",
        "royal_game_of_ur_board_side_06.png",
        "royal_game_of_ur_board_side_10.png",
        "royal_game_of_ur_board_side_08.png",
        "royal_game_of_ur_board_side_01.png"
    },
    is_ground_content = false,
    groups = {choppy = 3},
    paramtype2 = "facedir",
	light_source = 1
})

minetest.register_node("royal_game_of_ur:rgou_five_topaz", {
    description = "Royal Game of Ur - Boardpiece - Five Topaz",
    tiles = {
        "royal_game_of_ur_board_top_five_topaz.png",
        "royal_game_of_ur_board_bottom_all.png",
        "royal_game_of_ur_board_side_15.png",
        "royal_game_of_ur_board_side_08.png",
        "royal_game_of_ur_board_side_16.png",
        "royal_game_of_ur_board_side_07.png"
    },
    is_ground_content = false,
    groups = {choppy = 3},
    paramtype2 = "facedir",
	light_source = 1
})

minetest.register_node("royal_game_of_ur:rgou_four_fives", {
    description = "Royal Game of Ur - Boardpiece - Four Fives",
    tiles = {
        "royal_game_of_ur_board_top_four_fives.png",
        "royal_game_of_ur_board_bottom_all.png",
        "royal_game_of_ur_board_side_11.png",
        "royal_game_of_ur_board_side_19.png",
        "royal_game_of_ur_board_side_09.png",
        "royal_game_of_ur_board_side_02.png"
    },
    is_ground_content = false,
    groups = {choppy = 3},
    paramtype2 = "facedir",
	light_source = 1
})

minetest.register_node("royal_game_of_ur:rgou_one_five", {
    description = "Royal Game of Ur - Boardpiece - One Five",
    tiles = {
        "royal_game_of_ur_board_top_one_five.png",
        "royal_game_of_ur_board_bottom_all.png",
        "royal_game_of_ur_board_side_04.png",
        "royal_game_of_ur_board_side_05.png",
        "royal_game_of_ur_board_side_11.png",
        "royal_game_of_ur_board_side_13.png"
    },
    is_ground_content = false,
    groups = {choppy = 3},
    paramtype2 = "facedir",
	light_source = 1
})

-- the game tokens

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

-- the dice
dofile(minetest.get_modpath("royal_game_of_ur").."/dice.lua")