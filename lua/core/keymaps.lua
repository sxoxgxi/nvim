-- utility functions
local function save_as()
  local filename = vim.fn.input('Save as: ', '', 'file')
  if filename ~= '' then
    vim.cmd('write ' .. filename)
    print('File saved as: ' .. filename)
  else
    print 'Save aborted'
  end
end

vim.keymap.set('n', '<C-S-s>', save_as, { noremap = true, silent = true, desc = 'Save file as' })
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', { noremap = true, silent = true, desc = 'Save file' })
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', { noremap = true, silent = true, desc = 'Quit command' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true, desc = 'No highlight search' })

-- Diagnostics
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { noremap = true, silent = true, desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { noremap = true, silent = true, desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true, desc = 'Delete character without yanking' })

-- scroll and center
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true, desc = 'Scroll up and center cursor' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true, desc = 'Scroll down and center cursor' })

-- find and center
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true, silent = true, desc = 'Find next and center cursor' })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true, silent = true, desc = 'Find previous and center cursor' })

-- buffers
vim.keymap.set('n', '<Tab>', '<cmd>bn<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bp<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>x', '<cmd>bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
vim.keymap.set('n', '<leader>b', '<cmd>enew<CR>', { noremap = true, silent = true, desc = 'Create new buffer' })

--windows
vim.keymap.set('n', '<leader>v', '<C-w>v', { noremap = true, silent = true, desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { noremap = true, silent = true, desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>se', '<C-w>=', { noremap = true, silent = true, desc = 'Equalize windows' })
vim.keymap.set('n', '<leader>xs', ':close<CR>', { noremap = true, silent = true, desc = 'Close window' })

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', { noremap = true, silent = true, desc = 'Resize split up' })
vim.keymap.set('n', '<Down>', ':resize +2<CR>', { noremap = true, silent = true, desc = 'Resize split down' })
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>', { noremap = true, silent = true, desc = 'Resize split left' })
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>', { noremap = true, silent = true, desc = 'Resize split right' })

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true, desc = 'Navigate up' })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true, desc = 'Navigate down' })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true, desc = 'Navigate right' })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true, desc = 'Navigate left' })

-- Misc
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true, desc = 'Toggle line wrap' })
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true, desc = 'Increase indentation' })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true, desc = 'Decrease indentation' })
vim.keymap.set('v', 'p', '"_dP', { noremap = true, silent = true, desc = 'Paste without yanking' })
vim.keymap.set('n', 'd-', 'd$', { noremap = true, silent = true, desc = 'Delete to end of line' })
vim.keymap.set('v', 'd', '"_d', { noremap = true, silent = true, desc = 'Delete without yanking' })

-- Plugs
vim.keymap.set('n', '<leader>md', '<cmd>MarkdownPreviewToggle<cr>', { noremap = true, silent = true, desc = 'Toggle markdown preview' })
