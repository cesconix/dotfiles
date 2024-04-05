vim.keymap.set({ 'n', 't' }, '<M-h>', '<cmd>1ToggleTerm direction=horizontal<CR>')
vim.keymap.set({ 'n', 't' }, '<M-l>', '<cmd>2ToggleTerm direction=horizontal<CR>')
vim.keymap.set({ 'n', 't' }, '<M-\\>', '<cmd>ToggleTerm direction=float<CR>')

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup()

    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end

    vim.api.nvim_create_autocmd('TermOpen', {
      pattern = 'term://*',
      callback = function()
        set_terminal_keymaps()
      end,
    })
  end,
}
