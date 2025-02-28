local function augroup(name)
  return vim.api.nvim_create_augroup('custom_' .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = augroup 'highlight_on_yank',
  callback = function()
    vim.highlight.on_yank()
  end,
})
