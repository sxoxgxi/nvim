return {
  'vyfor/cord.nvim',
  branch = 'master', -- Explicitly set to main branch
  event = 'BufReadPre',
  build = ':Cord update',
  opts = {
    lsp = {
      show_problem_count = true,
      severity = 3,
    },
  },
}
