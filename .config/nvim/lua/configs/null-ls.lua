local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
  sources = {
    null_ls.builtins.diagnostics.mypy,
    require("none-ls.diagnostics.ruff"),
    require("none-ls.diagnostics.eslint"),
  },
}
return opts
