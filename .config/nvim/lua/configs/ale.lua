local g = vim.g

g.ale_linter_aliases = {
  vue = {'typescript', 'vue'}
}

g.ale_linters = {
  javascript = {'eslint'},
  typescript = {'eslint'},
  vue = {'eslint', 'vls'},
}
