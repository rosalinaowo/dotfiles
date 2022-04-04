-- Rikka
-- Global options vim.opt
-- Local to window vim.wo
-- Local to buffer vim.bo


vim.opt.encoding= "utf-8"
vim.opt.number = true
vim.bo.syntax = "enable"
vim.opt.title = true
vim.bo.autoindent = true
vim.opt.background= "dark"
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
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.updatetime = 1000
vim.wo.signcolumn = "yes"

vim.cmd([[
	set nocompatible
	highlight CursorLine cterm=NONE ctermbg=236 ctermfg=none guibg=Grey40
	highlight CursorLineNr cterm=none ctermfg=White guifg=#2b506e guibg=#000000
	let g:gruvbox_italic=1
	colorscheme gruvbox
]])
