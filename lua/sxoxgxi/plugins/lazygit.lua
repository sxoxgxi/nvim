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
}
