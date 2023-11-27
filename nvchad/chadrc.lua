---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",
  hl_override = {
    CursorLine = {
      bg = "one_bg",
    },
  },
  statusline = {
    theme = "default",
    overriden_modules = nil,
  },
  tabufline = {
    lazyload = false,
  },
  -- transparency = true,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
