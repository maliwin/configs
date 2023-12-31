-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.window_decorations = 'RESIZE'
config.max_fps = 165
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
-- config.default_domain = 'WSL:Ubuntu'

-- and finally, return the configuration to wezterm
return config

