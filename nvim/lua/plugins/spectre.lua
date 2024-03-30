vim.keymap.set('n', '<leader>ss', '<cmd>lua require("spectre").toggle()<cr>', {
  desc = 'Search & Replace (workspace)',
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_file_search()<cr>', {
  desc = 'Search & Replace (buffer)',
})

return {
  'nvim-pack/nvim-spectre',
}
