-- https://github.com/ThePrimeagen/harpoon
return {
  'ThePrimeagen/harpoon',
  enabled = true,
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  keys = function()
    local harpoon = require 'harpoon'

    return {
      {
        '<leader>1',
        function()
          harpoon:list():select(1)
        end,
        desc = 'Harpoon buffer 1',
      },
      {
        '<leader>2',
        function()
          harpoon:list():select(2)
        end,
        desc = 'Harpoon buffer 2',
      },
      {
        '<leader>3',
        function()
          harpoon:list():select(3)
        end,
        desc = 'Harpoon buffer 3',
      },
      {
        '<Tab>',
        function()
          harpoon:list():next()
        end,
        desc = 'Harpoon next buffer',
      },
      {
        '<S-Tab>',
        function()
          harpoon:list():prev()
        end,
        desc = 'Harpoon prev buffer',
      },
      {
        '<leader>h',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon Toggle Menu',
      },
      {
        '<leader>a',
        function()
          harpoon:list():add()
        end,
        desc = 'Harpoon add file',
      },
      {
        '<leader>r',
        function()
          harpoon:list():remove()
        end,
        desc = 'Harpoon remove file',
      },
    }
  end,
}
