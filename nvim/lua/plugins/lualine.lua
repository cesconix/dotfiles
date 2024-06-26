return {
  'nvim-lualine/lualine.nvim',
  event = { 'VimEnter', 'BufReadPost', 'BufNewFile' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'diagnostics', { 'filename', path = 1 } },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      extensions = { 'neo-tree', 'fugitive', 'mason', 'quickfix', 'toggleterm', 'trouble' },
    }
  end,
}
