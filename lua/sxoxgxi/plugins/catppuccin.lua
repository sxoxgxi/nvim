return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,

      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        treesitter = true,
        notify = true,
        mason = false,
        noice = false,
        which_key = false,

        telescope = {
          enabled = true,
        },
        lualine = { enabled = true },
        mini = {
          enabled = true,
          indentscope_color = '',
        },

        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}
