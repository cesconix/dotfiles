-- https://github.com/stevearc/conform.nvim
return {
  'stevearc/conform.nvim',
  lazy = false,
  config = function()
    local conform = require 'conform'

    local formatters_by_ft = {
      lua = { 'stylua' },
      markdown = { 'prettier' },
      css = { 'prettier' },
      html = { 'prettier' },
      yaml = { 'prettier' },
      graphql = { 'prettier' },
      json = { 'prettier', stop_after_first = true },
      astro = { 'prettier', stop_after_first = true },
      javascript = { 'prettier', stop_after_first = true },
      typescript = { 'prettier', stop_after_first = true },
      javascriptreact = { 'prettier', stop_after_first = true },
      typescriptreact = { 'prettier', stop_after_first = true },
    }

    conform.setup {
      format_on_save = {
        timeout_ms = 500,
        stop_after_first = true,
        lsp_format = 'fallback',
      },
      formatters_by_ft = formatters_by_ft,
    }

    vim.keymap.set('n', '<leader>F', function()
      conform.format {
        lsp_fallback = true,
        async = true,
      }
    end, { desc = 'Format buffer' })
  end,
}
