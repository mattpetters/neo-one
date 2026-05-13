-- Neo-One Dark — matrix-green monochrome theme for NvChad Base46
-- Pure black background, layered forest/olive greens.
-- Pairs with: neo-one-dark Hermes skin + neo-one-dark Ghostty theme
---@type Base46Table
local M = {}

-- UI Colors (mactop-lime → base_30 slots)
M.base_30 = {
  white = "#a8c989",           -- foreground
  black = "#000000",            -- main bg
  darker_black = "#000000",     -- true black
  black2 = "#050a03",           -- darkest surface
  one_bg = "#0a0f06",           -- panel bg
  one_bg2 = "#0d1208",          -- slightly lighter
  one_bg3 = "#1a2310",          -- selection bg
  grey = "#1a2310",             -- medium surface
  grey_fg = "#0d1208",          -- darker UI element
  grey_fg2 = "#050a03",         -- darkest UI element
  light_grey = "#3d4f2b",       -- muted text
  red = "#5a4a2a",              -- danger (muted brown-green)
  baby_pink = "#4a5a3a",        -- magenta equivalent
  pink = "#4a5a3a",
  line = "#0a0f06",             -- cursorline
  green = "#b8d49a",            -- success / strings
  vibrant_green = "#a8c989",    -- bright accent
  nord_blue = "#5a7142",        -- blue slot
  blue = "#5a7142",
  seablue = "#5a7142",
  yellow = "#b8d49a",           -- warning / numbers
  sun = "#b8d49a",
  purple = "#4a5a3a",           -- keywords
  dark_purple = "#4a5a3a",
  teal = "#7a9a5f",             -- cyan equivalent
  orange = "#6b8454",
  cyan = "#7a9a5f",
  statusline_bg = "#0a0f06",    -- statusline
  lightbg = "#0d1208",          -- light bg elements
  pmenu_bg = "#5a7142",         -- popup menu
  folder_bg = "#3d4f2b",        -- file explorer folders
}

-- Base16 colors (standard terminal palette)
M.base_16 = {
  base00 = "#000000",  -- bg
  base01 = "#0a0f06",
  base02 = "#0d1208",
  base03 = "#1a2310",
  base04 = "#3d4f2b",
  base05 = "#a8c989",  -- fg
  base06 = "#6b8454",
  base07 = "#b8d49a",  -- brightest
  base08 = "#5a4a2a",  -- red
  base09 = "#6b8454",  -- orange
  base0A = "#b8d49a",  -- yellow
  base0B = "#a8c989",  -- green
  base0C = "#7a9a5f",  -- cyan
  base0D = "#5a7142",  -- blue
  base0E = "#4a5a3a",  -- magenta
  base0F = "#3d4f2b",  -- brown
}

-- Theme type
M.type = "dark"

-- Allow overrides from base46 custom highlights
M = require("base46").override_theme(M, "neo-one-dark")

return M
