/// ds_grid_remove_line(grid,line_num)
var grid, line_num, w, h, str, r, c

grid = argument0
line_num = argument1

w = ds_grid_width(grid)
h = ds_grid_height(grid)

if (line_num > h - 1 || line_num < 0) {
  show_error('invalid argument "line_num"', true)
}

if (line_num > 0) {
  ds_grid_set_grid_region(grid, grid, 0, 0, w - 1, line_num - 1, 0, 1)
}

ds_grid_set_region(grid, 0, 0, w - 1, 0, 0)
