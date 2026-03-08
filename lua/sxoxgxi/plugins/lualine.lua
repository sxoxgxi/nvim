return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'catppuccin/nvim' },

  opts = function()
    local lsp_status = {
      function()
        local clients = vim.lsp.get_clients { bufnr = vim.api.nvim_get_current_buf() }
        if #clients > 0 then
          local names = {}
          for _, client in ipairs(clients) do
            table.insert(names, client.name)
          end
          return ' ' .. table.concat(names, ', ')
        end
        return ' No LSP'
      end,
      cond = function()
        return vim.bo.filetype ~= ''
      end,
    }

    local buffers = {
      'buffers',
      mode = 0,
      show_filename_only = true,
      show_modified_status = true,
      hide_filename_extension = false,
      symbols = { alternate_file = '' },
    }

    local diagnostics = {
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
        theme = 'catppuccin',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'dashboard', 'lazy' },
        always_divide_middle = true,
        globalstatus = true,
      },

      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { buffers },
        lualine_x = { diff, diagnostics, lsp_status },
        lualine_y = { 'filetype' },
        lualine_z = { 'location', 'progress' },
      },
    }
  end,
}
