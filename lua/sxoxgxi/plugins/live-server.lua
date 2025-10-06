return {
  {
    'barrett-ruth/live-server.nvim',
    build = 'npm install -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop', 'LiveServerToggle' },
    keys = {
      {
        '<leader>lt',
        '<cmd>LiveServerToggle<cr>',
        desc = 'Toggle Live Server',
      },
    },
    config = true,
  },
}
