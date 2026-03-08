return {
  'akinsho/toggleterm.nvim',
  config = function()
    local palette = require('catppuccin.palettes').get_palette 'mocha'
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
          guibg = palette.base,
        },
        NormalFloat = {
          link = 'Normal',
        },
        FloatBorder = {
          guifg = palette.blue,
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
