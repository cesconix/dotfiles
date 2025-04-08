-- https://github.com/nvim-lualine/lualine.nvim
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'tokyonight',
      -- section_separators = '',
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = {
        {
          'mode',
          separator = { left = '' },
          padding = { left = 0, right = 1 },
        },
      },
      lualine_b = { 'branch', { 'diff', padding = 0 } },
      lualine_c = { 'diagnostics', { 'filename', path = 1 } },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { { 'progress', padding = { left = 0, right = 1 } } },
      lualine_z = {
        { 'location', separator = { right = '' }, padding = { left = 0, right = 0 } },
      },
    },
    -- extensions = { 'neo-tree', 'fugitive', 'mason', 'quickfix', 'toggleterm', 'trouble' },
  },
}
