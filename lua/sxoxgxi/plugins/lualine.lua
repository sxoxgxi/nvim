return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    local colors = {
      blue = '#65D1FF',
      green = '#3EFFDC',
      violet = '#FF61EF',
      yellow = '#FFDA7B',
      red = '#FF4A4A',
      fg = '#c3ccdc',
      bg = '#0f111f',
      inactive_bg = '#2c3043',
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = 'bold' },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
        x = { bg = colors.inactive_bg, fg = colors.fg },
        y = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg, gui = 'bold' },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
        x = { bg = colors.inactive_bg, fg = colors.fg },
        y = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg, gui = 'bold' },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
        x = { bg = colors.inactive_bg, fg = colors.fg },
        y = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = 'bold' },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
        x = { bg = colors.inactive_bg, fg = colors.fg },
        y = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = 'bold' },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
        x = { bg = colors.inactive_bg, fg = colors.fg },
        y = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = 'bold' },
        b = { bg = colors.inactive_bg, fg = colors.semilightgray },
        c = { bg = colors.inactive_bg, fg = colors.semilightgray },
        x = { bg = colors.inactive_bg, fg = colors.semilightgray },
        y = { bg = colors.bg, fg = colors.semilightgray },
      },
    }

    local lsp_status = {
      function()
        local clients = vim.lsp.get_clients { bufnr = vim.api.nvim_get_current_buf() }
        if #clients > 0 then
          local client_names = {}
          for _, client in ipairs(clients) do
            table.insert(client_names, client.name)
          end
          return 'Grammar police on duty (' .. table.concat(client_names, ', ') .. ')'
        end
        return 'No grammar police'
      end,
      cond = function()
        return vim.bo.filetype ~= ''
      end,
    }

    local buffer = {
      'buffers',
      mode = 0,
      show_filename_only = true,
      show_modified_status = true,
      hide_filename_extension = false,
      symbols = { alternate_file = '' },
      buffers_color = {
        active = { fg = colors.blue, bg = colors.bg },
        inactive = { fg = colors.fg, bg = colors.inactive_bg },
      },
    }

    local diagnostic = {
      'diagnostics',
      symbols = {
        error = ' ',
        warn = ' ',
        info = ' ',
        hint = ' ',
      },
    }

    local diff = {
      'diff',
      symbols = {
        added = ' ',
        modified = ' ',
        removed = ' ',
      },
    }

    return {
      options = {
        icons_enabled = true,
        theme = my_lualine_theme,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'dashboard', 'lazy' },
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { buffer },
        lualine_x = { diff, diagnostic, lsp_status },
        lualine_y = { 'filetype' },
        lualine_z = { 'location', 'progress' },
      },
    }
  end,
}
