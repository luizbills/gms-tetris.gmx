randomize()

// block types (per objects)
global.block_obj_total = 2;
global.block_obj[0] = obj_block_O;
global.block_obj[1] = obj_block_L;

// block types (per sprites)
global.block_spr_total = 5;
global.block_spr[0] = spr_block_red;
global.block_spr[1] = spr_block_blue;
global.block_spr[2] = spr_block_green;
global.block_spr[3] = spr_block_purple;
global.block_spr[4] = spr_block_yellow;

// start the game
room_goto_next()
