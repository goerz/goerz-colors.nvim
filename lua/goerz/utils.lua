local utils = {}

utils.terminal = function(colors)
  -- dark
  vim.g.terminal_color_0 = colors.Back
  vim.g.terminal_color_8 = colors.Gray

  -- light
  vim.g.terminal_color_7 = colors.Front
  vim.g.terminal_color_15 = colors.Front

  -- colors
  vim.g.terminal_color_1 = colors.Red
  vim.g.terminal_color_9 = colors.Red

  vim.g.terminal_color_2 = colors.Green
  vim.g.terminal_color_10 = colors.Green

  vim.g.terminal_color_3 = colors.Yellow
  vim.g.terminal_color_11 = colors.Yellow

  vim.g.terminal_color_4 = colors.Blue
  vim.g.terminal_color_12 = colors.Blue

  vim.g.terminal_color_5 = colors.Pink
  vim.g.terminal_color_13 = colors.Pink

  vim.g.terminal_color_6 = colors.BlueGreen
  vim.g.terminal_color_14 = colors.BlueGreen
end

return utils
