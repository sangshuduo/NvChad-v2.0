---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  -- Ubuntu terminal aubergine background (#300A24) for the dark theme
  changed_themes = {
    onedark = {
      base_16 = {
        base00 = "#300a24", -- nvim bg
        base01 = "#4c1540",
        base02 = "#5a1a48",
        base03 = "#8a5a7c", -- comments
        base04 = "#9a6a8c",
      },
      base_30 = {
        darker_black = "#290820",
        black = "#300a24", -- nvim bg
        black2 = "#3a0f2c",
        one_bg = "#411133",
        one_bg2 = "#4c1540",
        one_bg3 = "#521746",
        grey = "#5e1f51",
        grey_fg = "#7a3a6b",
        grey_fg2 = "#8e4c7d",
        light_grey = "#8e4c7d",
        line = "#3e1230", -- vertsplit etc
        statusline_bg = "#350c28",
        lightbg = "#421233",
      },
    },
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
