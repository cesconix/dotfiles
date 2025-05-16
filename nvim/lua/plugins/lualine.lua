return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "tokyonight",
      transparent = true,
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = {
        {
          "mode",
          separator = { left = "" },
          padding = { left = 0, right = 1 },
        },
      },
      lualine_z = {
        { "location", separator = { right = "" }, padding = { left = 0, right = 0 } },
      },
    },
  },
}
