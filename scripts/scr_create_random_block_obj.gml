/// scr_create_random_block_obj
var block_type, block

block_type = floor(random(global.block_obj_total))
block = instance_create(0, 0, global.block_obj[block_type]);

return block
