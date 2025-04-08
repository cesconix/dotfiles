-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    -- default_component_configs = {
    --   indent = {
    --     highlight = 'IblIndent',
    --   },
    -- },
    window = {
      -- width = 30,
      mappings = {
        ['P'] = { 'toggle_preview', config = { use_float = false, use_image_nvim = true } },
        ['oc'] = 'noop',
        ['od'] = 'noop',
        ['og'] = 'noop',
        ['om'] = 'noop',
        ['on'] = 'noop',
        ['os'] = 'noop',
        ['ot'] = 'noop',
        ['o'] = 'open',
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
      },
      follow_current_file = {
        enabled = true,
      },
    },
  },
}
