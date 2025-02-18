-- https://github.com/nvim-tree/nvim-web-devicons
return {
  'nvim-tree/nvim-web-devicons',
  config = function()
    local signs = {
      Error = '',
      Warn = '',
      Info = '',
      Hint = '',
    }

    for type, icon in pairs(signs) do
      local hl = 'DiagnosticSign' .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
    end
  end,
}
