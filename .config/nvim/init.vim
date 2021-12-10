source $HOME/.config/nvim/vim-plug/plugins.vim
" set script encoding
scriptencoding utf-8

set number
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

set cursorline
highlight CursorLine cterm=NONE ctermbg=236 ctermfg=none guibg=Grey40
highlight CursorLineNr cterm=none ctermfg=241 guifg=#2b506e guibg=#000000

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap tn :tabn<CR>