-- https://github.com/lukas-reineke/indent-blankline.nvim
return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      char = '▏',
    },
    whitespace = {
      remove_blankline_trail = false,
    },
  },
}
