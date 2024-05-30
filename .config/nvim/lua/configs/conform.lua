local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    vue = {"prettier"},
    typescript = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    scss = { "prettier" },
    sass = { "prettier" },
    yaml = { "prettier" },
    graphql = { "prettier" },
    python = { "black" },
  },

  format_on_save = {
     -- These options will be passed to conform.format()
     timeout_ms = 500,
     lsp_fallback = true,
   },
}

require("conform").setup(options)