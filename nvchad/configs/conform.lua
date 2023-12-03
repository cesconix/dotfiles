local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biome", "prettier" },
    javascriptreact = { "biome", "prettier" },
    typescript = { "biome", "prettier" },
    typescriptreact = { "biome", "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    sh = { "shfmt" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
}

require("conform").setup(options)
