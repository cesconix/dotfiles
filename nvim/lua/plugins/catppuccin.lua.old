-- https://github.com/catppuccin/nvim
return {
  'catppuccin/nvim',
  lazy = false,
  priority = 1000,
  opts = {
    flavour = 'macchiato',
    transparent_background = true,
    integrations = {
      mason = true,
      which_key = true,
      snacks = true,
      harpoon = true,
      copilot_vim = true,
      notify = true,
      diffview = true,
      lsp_trouble = true,
      nvim_surround = true,
      neotree = true,
    },
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)
    vim.cmd.colorscheme 'catppuccin'
  end,
}
