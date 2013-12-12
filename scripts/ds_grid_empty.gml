/// ds_grid_empty(grid)
var grid, w, h, r, c, result = true

grid = argument0
w = ds_grid_width(grid)
h = ds_grid_height(grid)

for (r = 0; r < h; r++) {
  for (c = 0; c < w; c++) {
    if (ds_grid_get(grid, c, r) != 0) {
      result = false
      break
    }
  }
  if (!result) break
}

return result
