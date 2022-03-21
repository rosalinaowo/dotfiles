local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Dvorak-friendly keybinds
--nvo
map('n', 'd', 'h', opts)
map('n', 'h', 'j', opts)
map('n', 't', 'k', opts)
map('n', 'n', 'l', opts)
map('n', 's', ':', opts)
map('n', 'S', ':', opts)
map('n', 'j', 'd', opts)
map('n', 'l', 'n', opts)
map('n', 'L', 'N', opts)

-- NerdTree
map('n', '<C-f>', ':NERDTreeFocus<CR>', opts)
map('n', '<C-n>', ':NerdTree<CR>', opts)
map('n', '<C-t>', ':NERDTreeToggle<CR>', opts)

-- Split Size
--nvo
map('n', '<C-Left>', ':vertical resize +3<CR>', opts)
map('n', '<C-Right>', ':vertical resize -3<CR>', opts)
map('n', '<C-Up>', ':resize +3<CR>', opts)
map('n', '<C-Down', ':resize -3<CR>', opts)

-- barbar mappings
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)

-- Goto buffer in position...
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

-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)

-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)

-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
