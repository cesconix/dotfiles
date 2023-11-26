local M = {}

M.cesconix = {
  n = {
    ["<C-A-k>"] = { ":resize +2 <CR>" },
    ["<C-A-j>"] = { ":resize -2 <CR>" },
    ["<C-A-h>"] = { ":vertical resize -2 <CR>" },
    ["<C-A-l>"] = { ":vertical resize +2 <CR>" },
    ["<C-A-i>"] = { ":set foldmethod=indent <CR>" },
  },
}

M.lsp = {
  n = {
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "format with conform",
    },
  },
}

return M
