return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      default_component_configs = {
        indent = {
          highlight = 'IblIndent',
        },
      },
      window = {
        width = 30,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
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
        },
        follow_current_file = {
          enabled = true,
        },
      },
    }
  end,
}
