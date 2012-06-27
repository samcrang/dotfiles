" do vim things
set nocompatible

" load pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" enable syntax highlighting
syntax enable
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
set title

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
nnoremap <Leader>f <ESC>:NERDTreeToggle<CR>
let g:ctrlp_map = '<Leader>t'


nnoremap <Leader>s <ESC>:call RelatedSpecVOpen()<CR>
