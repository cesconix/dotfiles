local utils = require 'utils'

return {
  'stevearc/conform.nvim',
  lazy = false,
  config = function()
    local conform = require 'conform'

    local formatters_by_ft = {
      lua = { 'stylua' },
      markdown = { 'prettierd' },
      css = { 'prettierd' },
      html = { 'prettierd' },
      yaml = { 'prettierd' },
      graphql = { 'prettierd' },
      json = { 'biome', 'prettierd' },
      astro = { 'biome', 'biome-check', 'prettierd' },
      javascript = { 'biome', 'biome-check', 'prettierd' },
      typescript = { 'biome', 'biome-check', 'prettierd' },
      javascriptreact = { 'biome', 'biome-check', 'prettierd' },
      typescriptreact = { 'biome', 'biome-check', 'prettierd' },
    }

    local formatters = {
      biome = {
        condition = function()
          return utils.file_exists {
            'biome.json',
          }
        end,
      },
      prettierd = {
        condition = function()
          return utils.file_exists {
            '.prettierrc',
            '.prettierrc.js',
            'prettier.config.cjs',
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
