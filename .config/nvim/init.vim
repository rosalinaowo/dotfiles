source $HOME/.config/nvim/vim-plug/plugins.vim
" set script encoding
scriptencoding utf-8

set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set nocompatible
syntax enable
set encoding=utf-8
set title
set autoindent
set background=dark
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
" ignore case when searching
set ignorecase
set smarttab
set nobackup
set splitbelow splitright

set cursorline
highlight CursorLine cterm=NONE ctermbg=236 ctermfg=none guibg=Grey40
highlight CursorLineNr cterm=none ctermfg=White guifg=#2b506e guibg=#000000

" Dvorak it!
no d h
no h j
no t k
no n l
no s :
no S :
no j d
no l n
no L N

" NerdTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap tn :tabn<CR>

" Adjust split size
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-down> :resize -3<CR>

" Color Scheme
colorscheme gruvbox

lua << END
require('lualine-config')
require('mappings')
require('barbar')
END
