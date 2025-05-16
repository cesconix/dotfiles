-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "yc", "yygccp", { remap = true })

vim.keymap.set("n", "<M-a>", "ggyG", { desc = "Select All" })

vim.keymap.set("n", "L", "$", { desc = "Go to end of line" })
vim.keymap.set("n", "H", "^", { desc = "Go to start of line" })
