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

        Plugin 'tmhedberg/SimpylFold'
        Plugin 'nvie/vim-flake8'
        Plugin 'Chiel92/vim-autoformat'

"To install Pathogen plugins

call pathogen#infect()

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

"Set color schema"
    color ron
    highlight Comment cterm=bold

    set background=dark

let python_highlight_all=1
syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:jedi#completions_enabled = 0
let g:jedi#goto_command = "<Leader>d"
let g:jedi#goto_assignments_command = "<Leader>g"
let g:jedi#goto_definitions_command = "<C-d>"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<Leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<Leader>r"

let g:formatdef_scalafmt = "'scalafmt --stdin'"
let g:formatters_scala = ['scalafmt']
noremap <C-e> :Autoformat<CR>

set lazyredraw

call vundle#end()
filetype plugin indent on

let NERDTreeShowHidden=1

autocmd BufWritePre * %s/\s\+$//e

" Use UTF-8 encoding
set encoding=utf-8

" HIGHLIGHT
    "Set highlight search
    set hlsearch
    "Hightlight current column
    set cursorcolumn
    "Highlight currentline
    set cursorline
    hi CursorLine cterm=underline
    "Highlight 79 col
    set colorcolumn=79
    hi ColorColumn ctermbg=DarkGrey
    "Row number colors
    hi LineNr term=bold ctermfg=DarkGrey
    hi CursorLineNr term=bold ctermfg=LightGrey
