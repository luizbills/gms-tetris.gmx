/// scr_block_check_collision(block)
// retorna true se um mesmo espaço de ambos os grids estiverem
// preenchidos com um valor diferente de zero

var block, bx, by, bw, bh, r, c, result = false

block = argument0
gg = global.game_grid

with(block) {

bx = block_x
by = block_y
//ggw = ds_grid_width(gg)
//ggh = ds_grid_height(gg)
bw = grid_width
bh = grid_height

for (r = 0; r < bh; r++) {
  for (c = 0; c < bw; c++) {
    if (ds_grid_get(grid, c, r) != 0 and ds_grid_get(gg, c + bx, r + by) != 0) {
      result = true // colidiu
      break
    }
  }
  if (result) break
}

}

return result
