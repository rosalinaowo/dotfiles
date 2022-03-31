local wezterm = require 'wezterm';

return {
	-- Fonts
	adjust_window_size_when_changing_font_size = false,
	font_size = 11.0,
	font = wezterm.font_with_fallback({
			"Fira Code Medium",
			"Noto Sans Mono CJK KR",
			"Noto Sans Mono CJK HK",
			"Noto Sans Mono CJK JP",
			"Noto Sans Mono CJK SC",
			"Noto Sans Mono CJK TC",
			"Noto Color Emoji",
		}),
	font_rules = {
		{
			italic = true,
			font = wezterm.font("Operator Mono Medium"),
		},
		{
			intensity = "Bold",
			font = wezterm.font("Fira Code", {weight = "Bold"}),
		},
	},
	
	-- Cursor
	default_cursor_style = "BlinkingUnderline",
	animation_fps = 1,
	cursor_blink_rate = 500,
	cursor_blink_ease_in = "Linear",
	cursor_blink_ease_out = "Linear",

	-- Colorscheme
	color_scheme_dirs = {"~/.config/wezterm/colors"},
	color_scheme = "paradise",
	
	enable_tab_bar = false,

	-- Padding
	window_padding = {
		left = 15,
		right = 15,
		top = 15,
		bottom = 10,
	}
}
