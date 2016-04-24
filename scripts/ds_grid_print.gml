/// ds_grid_print(grid)
var grid, w, h, str, r, c

grid = argument0
w = ds_grid_width(grid)
h = ds_grid_height(grid)

repeat (2) show_debug_message("") // line breaks

for (r = 0; r < h; r++) {
  str = "   "
  for (c = 0; c < w; c++) {
    if (ds_grid_get(grid, c, r) == 0) str += "0"
    else str += "*"
  }
  show_debug_message(str)
}
