set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ========================================
" Plugins list 
" ========================================
"

    Plugin 'gmarik/Vundle.vim'

    " Visuals

        Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

    " Search

        Plugin 'kien/ctrlp.vim'
        Plugin 'davidhalter/jedi-vim'

    " Coding

        Plugin 'vim-syntastic/syntastic'
        Plugin 'tmhedberg/SimpylFold'
        Plugin 'nvie/vim-flake8'

"To install Pathogen plugins

call pathogen#infect()

" Use UTF-8 encoding

set encoding=utf-8

" Turn off swap, backup

set nobackup
set nowb
set noswapfile

set showmatch
set autoread "Reload files

set relativenumber


" Set tab to 4 spaces

set tabstop=4
set shiftwidth=4
set expandtab


"Run NERDTree even if no files are specified

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" REmaps
"split navigations
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>
    nnoremap <space> za
    "Ctrl + n to open NERDTree
    map <C-n> :NERDTreeToggle<CR>

"Folding
    let g:SimpylFold_docstring_preview=1
    set foldlevel=99

"Set color schema
    colorscheme molokai
    highlight Comment cterm=bold

" HIGHLIGHT
    "Set highlight search
    set hlsearch
    "Hightlight current column
    set cursorcolumn
    "Highlight currentline
    set cursorline
    hi CursorLine cterm=underline
    " Syntax highlighting
    syntax on
    set colorcolumn=79


let python_highlight_all=1
syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']

let g:jedi#completions_enabled = 0
let g:jedi#goto_command = "<Leader>d"
let g:jedi#goto_assignments_command = "<Leader>g"
let g:jedi#goto_definitions_command = "<C-d>"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<Leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<Leader>r"

call vundle#end()
filetype plugin indent on
