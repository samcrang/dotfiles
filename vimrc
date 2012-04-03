" do vim things
set nocompatible

" load pathogen
call pathogen#infect()

" enable syntax highlighting
syntax enable
set background=dark
colorscheme solarized

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

