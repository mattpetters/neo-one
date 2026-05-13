-- Neo-One Light — inverted matrix phosphor on warm paper for NvChad Base46
-- Cream base with layered forest/olive greens for daylight editing.
-- Pairs with: neo-one-light Hermes skin + neo-one-light Ghostty theme
---@type Base46Table
local M = {}

-- UI Colors (mactop-lime inverted → base_30 slots)
M.base_30 = {
  white = "#2a3818",           -- foreground (dark phosphor)
  black = "#f5f2e8",            -- main bg (warm cream)
  darker_black = "#ede9db",     -- slightly darker
  black2 = "#faf9f3",           -- lighter surface
  one_bg = "#ede9db",           -- panel bg
  one_bg2 = "#e8e4d5",          -- slightly darker panel
  one_bg3 = "#d5d3c0",          -- selection bg
  grey = "#d5d3c0",             -- medium surface
  grey_fg = "#c0bead",          -- darker UI element
  grey_fg2 = "#e8e4d5",         -- lighter UI element
  light_grey = "#7a8a5f",       -- muted text (lighter green)
  red = "#7a4a3a",              -- danger (warm brown-red)
  baby_pink = "#5a4a5a",        -- magenta equivalent
  pink = "#5a4a5a",
  line = "#ede9db",             -- cursorline
  green = "#4a6235",            -- strings
  vibrant_green = "#3d4f2b",   -- bright accent (darkest green)
  nord_blue = "#5a7142",        -- blue slot
  blue = "#5a7142",
  seablue = "#5a7142",
  yellow = "#6b8454",           -- numbers
  sun = "#6b8454",
  purple = "#5a4a5a",           -- keywords
  dark_purple = "#5a4a5a",
  teal = "#4a6a5a",             -- cyan equivalent
  orange = "#6b8454",
  cyan = "#4a6a5a",
  statusline_bg = "#ede9db",    -- statusline
  lightbg = "#faf9f3",          -- light bg elements
  pmenu_bg = "#6b8454",         -- popup menu
  folder_bg = "#5a7142",        -- file explorer folders
}

-- Base16 colors (standard terminal palette)
M.base_16 = {
  base00 = "#f5f2e8",  -- bg
  base01 = "#ede9db",
  base02 = "#e8e4d5",
  base03 = "#d5d3c0",
  base04 = "#b5b0a0",
  base05 = "#2a3818",  -- fg
  base06 = "#4a6235",
  base07 = "#3d4f2b",  -- darkest green
  base08 = "#7a4a3a",  -- red
  base09 = "#6b8454",  -- orange
  base0A = "#5a7142",  -- yellow
  base0B = "#4a6235",  -- green
  base0C = "#4a6a5a",  -- cyan
  base0D = "#5a7142",  -- blue
  base0E = "#5a4a5a",  -- magenta
  base0F = "#7a8a5f",  -- brown
}

-- Theme type
M.type = "light"

-- Allow overrides from base46 custom highlights
M = require("base46").override_theme(M, "neo-one-light")

return M
