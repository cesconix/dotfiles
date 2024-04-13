local utils = require 'utils'

return {
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'

      local linters_by_ft = {
        markdown = { 'markdownlint' },
        dockerfile = { 'hadolint' },
        javascript = { 'biomejs', 'eslint' },
        typescript = { 'biomejs', 'eslint' },
        json = { 'biomejs', 'jsonlint' },
      }

      local linters = {
        biomejs = {
          condition = function()
            return utils.file_exists {
              'biome.json',
            }
          end,
        },
        eslint = {
          condition = function()
            return utils.file_exists {
              '.eslintrc',
              '.eslintrc.json',
            }
          end,
        },
      }

      lint.linters_by_ft = linters_by_ft

      local function try_lint()
        local names = lint.linters_by_ft[vim.bo.filetype]
        local filtered_linters = {}

        if names then
          for _, name in ipairs(names) do
            local linter = linters[name]
            if not linter or (linter and linter.condition()) then
              table.insert(filtered_linters, name)
            end
          end
        end

        if #filtered_linters > 0 then
          lint.try_lint(filtered_linters)
        end
      end

      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = try_lint,
      })

      vim.keymap.set('n', '<leader>L', try_lint, { desc = 'Lint buffer' })
    end,
  },
}
