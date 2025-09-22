vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', 'd', '"_d', opts)
map('v', 'd', '"_d', opts)

-- Update plugins
map('n', '<leader>u', ':PackerSync<CR>', opts)

-- New file
map('n', '<leader>n', '<cmd>enew<CR>', opts)

-- Resize splits
map('n', '<C-Left>', ':vertical resize -3<CR>', opts)
map('n', '<C-Right>', ':vertical resize +3<CR>', opts)
map('n', '<C-Up>', ':resize +3<CR>', opts)
map('n', '<C-Down>', ':resize -3<CR>', opts)

-- Nvim-tree.lua
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>f', ':NvimTreeFindFile<CR>', opts)

-- Toggleterm
map('n', '<leader>t', ':ToggleTerm size=50 direction=vertical<CR>', opts)
map('n', '<leader>T', ':ToggleTerm size=10 direction=horizontal<CR>', opts)

-- barbar mappings
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)

map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)

map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)

map('n', '<A-c>', ':BufferClose<CR>', opts)
