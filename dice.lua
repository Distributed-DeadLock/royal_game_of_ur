-- node_box for all the dice states
local dicenodebox = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5}, -- base_1
			{-0.4375, -0.375, -0.4375, 0.4375, -0.125, 0.4375}, -- base_2
			{-0.5, -0.125, -0.5, 0.5, -0.0625, 0.5}, -- base_3
			{-0.25, -0.0625, 0.125, -0.125, 0.0625, 0.25}, -- d1_a
			{0.125, -0.0625, 0.125, 0.25, 0.0625, 0.25}, -- d2_a
			{-0.25, -0.0625, -0.25, -0.125, 0.0625, -0.125}, -- d3_a
			{0.125, -0.0625, -0.25, 0.25, 0.0625, -0.125}, -- d4_a
			{-0.1875, 0.0625, 0.125, -0.125, 0.125, 0.1875}, -- d1_b
			{0.125, 0.0625, 0.125, 0.1875, 0.125, 0.1875}, -- d2_b
			{-0.1875, 0.0625, -0.1875, -0.125, 0.125, -0.125}, -- d3_b
			{0.125, 0.0625, -0.1875, 0.1875, 0.125, -0.125}, -- d4_b
			{-0.3125, -0.0625, 0.125, -0.25, 0, 0.1875}, -- d1_c
			{-0.1875, -0.0625, 0.25, -0.125, 0, 0.3125}, -- d1_d
			{0.125, -0.0625, 0.25, 0.1875, 0, 0.3125}, -- d2_c
			{0.25, -0.0625, 0.125, 0.3125, 0, 0.1875}, -- d2_d
			{-0.3125, -0.0625, -0.1875, -0.25, 0, -0.125}, -- d3_c
			{-0.1875, -0.0625, -0.3125, -0.125, 0, -0.25}, -- d3_d
			{0.25, -0.0625, -0.1875, 0.3125, 0, -0.125}, -- d4_c
			{0.125, -0.0625, -0.3125, 0.1875, 0, -0.25}, -- d4_d
			{-0.5, -0.0625, 0.4375, 0.5, 0, 0.5}, -- b_b
			{-0.5, -0.0625, -0.4375, -0.4375, 0, 0.4375}, -- b_l
			{0.4375, -0.0625, -0.4375, 0.5, 0, 0.4375}, -- b_r
			{-0.5, -0.0625, -0.5, 0.5, 0, -0.4375}, -- b_f
		}
	}
-- dice : base state
minetest.register_node("royal_game_of_ur:rgou_dice", {
	description = "Royal Game of Ur - Dice",
	tiles = {
		"royal_game_of_ur_dice_top.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png"
	},
	is_ground_content = false,
    groups = {choppy = 3},
    paramtype2 = "facedir",
	light_source = 2,
	drawtype = "nodebox",
	paramtype = "light",
	drop = "royal_game_of_ur:dice",
	node_box = dicenodebox ,
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local timer = minetest.get_node_timer(pos)
		minetest.swap_node(pos,{name="royal_game_of_ur:rgou_dice_ani"})
		timer:start(1)
	end,
})

-- dice : shows 1
minetest.register_node("royal_game_of_ur:rgou_dice_1", {
	description = "Royal Game of Ur - Dice",
	tiles = {
		"royal_game_of_ur_dice1_top.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png"
	},
	is_ground_content = false,
    groups = {choppy = 3, not_in_creative_inventory=1},
    paramtype2 = "facedir",
	light_source = 2,
	drawtype = "nodebox",
	paramtype = "light",
	drop = "royal_game_of_ur:dice",
	node_box = dicenodebox ,
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local timer = minetest.get_node_timer(pos)
		minetest.swap_node(pos,{name="royal_game_of_ur:rgou_dice_ani"})
		timer:start(1)
	end,
})


-- dice : shows 2
minetest.register_node("royal_game_of_ur:rgou_dice_2", {
	description = "Royal Game of Ur - Dice",
	tiles = {
		"royal_game_of_ur_dice2_top.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png"
	},
	is_ground_content = false,
    groups = {choppy = 3, not_in_creative_inventory=1},
    paramtype2 = "facedir",
	light_source = 2,
	drawtype = "nodebox",
	paramtype = "light",
	drop = "royal_game_of_ur:dice",
	node_box = dicenodebox ,
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local timer = minetest.get_node_timer(pos)
		minetest.swap_node(pos,{name="royal_game_of_ur:rgou_dice_ani"})
		timer:start(1)
	end,
})


-- dice : shows 3
minetest.register_node("royal_game_of_ur:rgou_dice_3", {
	description = "Royal Game of Ur - Dice",
	tiles = {
		"royal_game_of_ur_dice3_top.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png"
	},
	is_ground_content = false,
    groups = {choppy = 3, not_in_creative_inventory=1},
    paramtype2 = "facedir",
	light_source = 2,
	drawtype = "nodebox",
	paramtype = "light",
	drop = "royal_game_of_ur:dice",
	node_box = dicenodebox ,
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local timer = minetest.get_node_timer(pos)
		minetest.swap_node(pos,{name="royal_game_of_ur:rgou_dice_ani"})
		timer:start(1)
	end,
})


-- dice : shows 4
minetest.register_node("royal_game_of_ur:rgou_dice_4", {
	description = "Royal Game of Ur - Dice",
	tiles = {
		"royal_game_of_ur_dice4_top.png",
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png"
	},
	is_ground_content = false,
    groups = {choppy = 3, not_in_creative_inventory=1},
    paramtype2 = "facedir",
	light_source = 2,
	drawtype = "nodebox",
	paramtype = "light",
	drop = "royal_game_of_ur:dice",
	node_box = dicenodebox ,
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local timer = minetest.get_node_timer(pos)
		minetest.swap_node(pos,{name="royal_game_of_ur:rgou_dice_ani"})
		timer:start(1)
	end,
})


-- dice : throwing the dice - animation
minetest.register_node("royal_game_of_ur:rgou_dice_ani", {
	description = "Royal Game of Ur - Dice",
	tiles = {
		{name="royal_game_of_ur_dice_top_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.8}},
		"royal_game_of_ur_stone-black-sides.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png",
		"royal_game_of_ur_dice_side.png"
	},
	is_ground_content = false,
    groups = {choppy = 3, not_in_creative_inventory=1},
    paramtype2 = "facedir",
	light_source = 3,
	drawtype = "nodebox",
	paramtype = "light",
	drop = "royal_game_of_ur:dice",
	node_box = dicenodebox ,
	on_timer = function(pos, elapsed)
		local ran = ( math.random(0,1) + math.random(0,1) + math.random(0,1) + math.random(0,1) )
		if (ran < 1) then
			minetest.swap_node(pos,{name="royal_game_of_ur:rgou_dice"})
		else
			minetest.swap_node(pos,{name="royal_game_of_ur:rgou_dice_" .. ran})
		end
	end,
})