local utils = require 'utils'

return {
  'stevearc/conform.nvim',
  lazy = false,
  config = function()
    local conform = require 'conform'

    local formatters_by_ft = {
      lua = { 'stylua' },
      markdown = { 'mdformat' },
      css = { 'prettier' },
      html = { 'prettier' },
      yaml = { 'prettier' },
      json = { 'biome', 'prettier' },
      javascript = { 'biome', 'biome-check', 'prettier' },
      typescript = { 'biome', 'biome-check', 'prettier' },
      javascriptreact = { 'biome', 'biome-check', 'prettier' },
      typescriptreact = { 'biome', 'biome-check', 'prettier' },
    }

    local formatters = {
      biome = {
        condition = function()
          return utils.file_exists {
            'biome.json',
          }
        end,
      },
      prettier = {
        condition = function()
          return utils.file_exists {
            '.prettierrc.js',
          }
        end,
      },
    }

    conform.setup {
      format_on_save = function()
        return {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      end,
      formatters_by_ft = formatters_by_ft,
      formatters = formatters,
    }

    vim.keymap.set('n', '<leader>F', function()
      conform.format {
        lsp_fallback = true,
        async = true,
      }
    end, { desc = 'Format buffer' })
  end,
}
