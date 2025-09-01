-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
-- config.color_scheme = "Gruvbox Light"
config.color_scheme = "Tokyo Night"
config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.font_size = 18.0
config.default_prog = { os.getenv("SCOOP") .. "/apps/pwsh/current/pwsh.exe" }
--窗口标题栏配置。隐藏系统标题栏，将窗口按钮集成到标签栏，允许调整窗口大小。
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
--窗口关闭确认，不弹出
config.window_close_confirmation = "NeverPrompt"
--标签的标题渲染，false表示使用复古样式
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.9
local username = os.getenv("USER") or os.getenv("USERNAME")
config.default_cwd = "C:/Users/" .. username .. "/Desktop/"
-- config.initial_cols = 120
-- config.initial_rows = 28

-- Finally, return the configuration to wezterm:
return config
