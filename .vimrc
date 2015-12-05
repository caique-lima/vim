" Use UTF-8 encoding

set encoding=utf-8

" Turn off swap, backup

set nobackup
set nowb
set noswapfile

set number	"Show line numbers
set autoread "Reload files

" Syntax highlighting

syntax on

" Set tab to 4 spaces

set tabstop=4
set expandtab

"To install plugins

call pathogen#infect()

"Run NERDTree even if no files are specified

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Ctrl + n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

"Set color schema

colorscheme molokai
highlight Comment cterm=bold
