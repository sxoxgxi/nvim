return {
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitFiterCurrentFile',
    'LazyGitFilter',
    'LazyGitCurrentFile',
    'LazyGitConfig',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'Open Lazygit' },
  },
  config = function()
    vim.cmd 'highlight LazyGitBorder guifg=#208397'
  end,
}
