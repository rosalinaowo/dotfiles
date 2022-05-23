local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"
local fontconfig = require "plugins.fontconfig"

-- Theme

core.reload_module("colors.paradise-dark")

-- Keybinds
keymap.add { ["ctrl+shift+r"] = "core:restart" }
keymap.add { ["ctrl+alt+c"] = "copy-file-location:copy-file-location" }

-- Fonts

local font = renderer.font.load(USERDIR .. "/fonts/Fira Code Medium Nerd Font Complete.ttf", 14 * SCALE)
local code_font = renderer.font.load(USERDIR .. "/fonts/Fira Code Medium Nerd Font Complete.ttf", 15 * SCALE)
local emoji = renderer.font.load(USERDIR .. "/fonts/NotoEmoji-Regular.ttf", 14 * SCALE)
local italicFont = renderer.font.load(USERDIR .. "/fonts/Operator Mono Medium Italic.ttf", 15 * SCALE)
style.font = renderer.font.group({font, emoji})
style.code_font = renderer.font.group({code_font, emoji})

style.syntax_fonts = {
	comment = italicFont,
  keyword2 = italicFont
}

--local italicFont = fontconfig.load_blocking({ 'Operator Mono:style=Medium Italic', 14 * SCALE })

--[[fontconfig.use_blocking {
	font = {
		group = {
			'Fira Code:style=Regular',
      'FiraCode Nerd Font:style=Regular',
      --'Noto Color Emoji'
		},
		size = 14 * SCALE
	},
	code_font = {
		group = {
			'FiraCode Nerd Font:style=Medium',
      --'Noto Color Emoji'
		},
		size = 15 * SCALE
	}
}]]


config.tab_type = 'hard'
