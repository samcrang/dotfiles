" do vim things
set nocompatible

" load pathogen
call pathogen#infect()

" enable syntax highlighting
syntax on
set background=dark
colorscheme solarized

" filetype detection
filetype on
filetype indent on
filetype plugin on

" make backspace work
set bs=2

" enable line numbers
set number

" highlight current line
set cursorline

" show current mode
set showmode

" show cursor position
set ruler

" always show a status line
set laststatus=2

" show filename in title
set notitle

" show the command as it's being typed
set showcmd

" tabs and spaces
set shiftwidth=2
set tabstop=2
set expandtab

" no beep
set visualbell

" nobackups/swap
set nobackup
set nowritebackup
set noswapfile

" search options
set hlsearch
set incsearch

" enable mouse support
set mouse=a

" enable compiler support for ruby
autocmd FileType ruby compiler ruby

" key remapping
let mapleader = '\'
inoremap jj <ESC>

" NERDTree
let NERDTreeWinPos='right'
let NERDTreeMinimalUI=1

" vim-airline
let g:airline_powerline_fonts = 0
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
