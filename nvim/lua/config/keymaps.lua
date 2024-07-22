local opts = { noremap = true, silent = true }

-- Clear search with <esc>
vim.keymap.set({ 'n', 'i' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- Resize window
vim.keymap.set('n', '<S-Up>', '<cmd>resize +2<cr>', opts)
vim.keymap.set('n', '<S-Down>', '<cmd>resize -2<cr>', opts)
vim.keymap.set('n', '<S-Left>', '<cmd>vertical resize +2<cr>', opts)
vim.keymap.set('n', '<S-Right>', '<cmd>vertical resize -2<cr>', opts)

-- Exit terminal mode
vim.keymap.set('t', '<esc><esc>', '<C-\\><C-n>', opts)

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', opts)
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', opts)
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', opts)
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', opts)
vim.keymap.set('t', '<C-h>', '<cmd>wincmd h<cr>', opts)
vim.keymap.set('t', '<C-j>', '<cmd>wincmd j<cr>', opts)
vim.keymap.set('t', '<C-k>', '<cmd>wincmd k<cr>', opts)
vim.keymap.set('t', '<C-l>', '<cmd>wincmd l<cr>', opts)

-- Quit and Save
vim.keymap.set({ 'n', 'i', 'v' }, '<C-d>', 'ZZ', { desc = 'Save and Quit (buffer)' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-q>', '<cmd>qa<cr><esc>', { desc = 'Quit' })

-- Select All
vim.keymap.set('n', '<M-a>', 'ggVG', { desc = 'Select All' })

-- File Explorer (toggle)
vim.keymap.set('n', '<C-b>', '<cmd>Neotree toggle<cr>', opts)

-- Lazy & Mason
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>', { desc = 'Lazy' })
vim.keymap.set('n', '<leader>m', '<cmd>Mason<cr>', { desc = 'Mason' })

-- New File
vim.keymap.set('n', '<leader>fn', '<cmd>enew<cr>', { desc = 'New File' })

-- Move Lines
vim.keymap.set('v', 'J', "<cmd>m '>+4<CR>gv=gv", { desc = 'Move Down' })
vim.keymap.set('v', 'K', "<cmd>m '<1<CR>gv=gv", { desc = 'Move Up' })

-- Relative Numbers
vim.keymap.set('n', '<leader>R', '<cmd>set rnu!<cr>', { desc = 'Relative Number' })

-- Move Cursor
vim.keymap.set('n', 'L', '$', { desc = 'Go to end of line' })
vim.keymap.set('n', 'H', '^', { desc = 'Go to start of line' })
