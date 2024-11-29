return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<c-\>]],
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      direction = 'float',
      close_on_exit = true,
      shell = '/bin/bash', -- Use /bin/bash as the shell
      highlights = {
        Normal = {
          guibg = '#ffffff', -- Background color for the terminal
        },
        NormalFloat = {
          link = 'Normal', -- Link the normal float to Normal (inherits properties)
        },
        FloatBorder = {
          guifg = '#27a1b9', -- Foreground (border) color
        },
      },
      float_opts = {
        border = 'curved', -- Border style: 'single', 'double', 'shadow', 'curved', etc.
        width = math.floor(vim.o.columns * 0.8),
        height = math.floor(vim.o.lines * 0.8),
      },
    }
  end,
}
