vim.keymap.set({ 'n', 't' }, '<M-h>', '<cmd>1ToggleTerm direction=horizontal name=h<CR>')
vim.keymap.set({ 'n', 't' }, '<M-j>', '<cmd>1ToggleTerm direction=vertical name=j<CR>')
vim.keymap.set({ 'n', 't' }, '<M-k>', '<cmd>2ToggleTerm direction=vertical name=k<CR>')
vim.keymap.set({ 'n', 't' }, '<M-l>', '<cmd>2ToggleTerm direction=horizontal name=l<CR>')
vim.keymap.set({ 'n', 't' }, '<M-\\>', '<cmd>3ToggleTerm direction=float name=\\<CR>')

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
    }

    vim.api.nvim_create_autocmd('TermOpen', {
      pattern = 'term://*',
      callback = function()
        local opts = { buffer = 0 }
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

        vim.cmd [[ setlocal signcolumn=no ]]
      end,
    })
  end,
}
