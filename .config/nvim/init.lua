-- Rikka

vim.opt.encoding="utf-8"
vim.opt.number = true
vim.bo.syntax = "enable"
vim.opt.title = true
vim.bo.autoindent = true
vim.opt.background="dark"
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.backup = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.wo.cursorline = true
vim.opt.mouse="a"
vim.cmd([[
	set nocompatible
	highlight CursorLine cterm=NONE ctermbg=236 ctermfg=none guibg=Grey40
	highlight CursorLineNr cterm=none ctermfg=White guifg=#2b506e guibg=#000000
	colorscheme gruvbox
]])

require('vim-plug')
require('keybinds')
require('lualine-config')
require('barbar')
