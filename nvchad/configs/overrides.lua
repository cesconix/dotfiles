-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
    "tsx",
    "typescript",
  },
}

M.nvimtree = {
  git = {
    enable = true,
    ignore = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = false,
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    -- "typescript-language-server",
    "deno",
    "prettier",
    "emmet-ls",
    "json-lsp",
    -- "tailwindcss-language-server",
    "unocss-language-server",

    -- shell
    "shfmt",
    "shellcheck",
    "bash-language-server",

    -- "clangd",
    -- "clang-format",
  },
}

M.cmp = {
  sources = {
    -- trigger_characters is for unocss lsp
    { name = "nvim_lsp", trigger_characters = { "-" } },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "codeium" },
    { name = "nvim_lua" },
  },
  experimental = {
    ghost_text = true,
  },
}

M.gitsigns = {
  current_line_blame = true,
}

return M
