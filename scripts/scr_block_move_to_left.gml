/// scr_block_move_to_left(block)

var block, bgrid, bx, by, bw, bh, game_grid, nextpos_grid

block = argument0
game_grid = block.manager.game_grid

with (block) {
    bgrid = grid

    bx = block_x
    by = block_y

    // verifica se ele está no limite esquerdo da tela
    if (bx - 1 < 0) exit

    bh = grid_height

    nextpos_grid = ds_grid_create(1, bh)

    ds_grid_set_grid_region(nextpos_grid, game_grid, bx-1, by, bx-1, by + bh - 1, 0, 0)
    
    if (ds_grid_empty(nextpos_grid)) {
        block_x--;
    }

    ds_grid_destroy(nextpos_grid)
}
