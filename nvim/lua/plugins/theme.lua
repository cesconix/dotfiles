return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    styles = {
      floats = 'dark',
      sidebars = 'transparent',
      comments = { italic = false },
      keywords = { italic = false },
    },
    lualine_bold = true,
    plugins = {
      copilot = true,
      cmp = true,
      flash = true,
      fzf = true,
      indent_blankline = true,
      lazy = true,
      mini_surround = true,
      ['neo-tree'] = true,
      noice = true,
      snacks = true,
      telescope = true,
      treesitter_context = true,
      trouble = true,
      which_key = true,
    },
  },
  config = function(_, opts)
    require('tokyonight').setup(opts)
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
