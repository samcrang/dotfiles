" do vim things
set nocompatible

" load Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
Plugin 'klen/python-mode'
call vundle#end()

filetype plugin indent on

" sensible defaults
set encoding=utf-8
set scrolloff=5
set autoindent
set wildmenu
set wildmode=list:longest
set ttyfast
set bs=indent,eol,start
set nofoldenable
set modelines=0
set number
set cursorline
set showmode
set ruler
set laststatus=2
set notitle
set showcmd
set visualbell
set mouse=a
set shortmess+=I

" nobackups/swap
set nobackup
set nowritebackup
set noswapfile

" search options
set ignorecase
set smartcase
set gdefault
set hlsearch
set incsearch
set showmatch

" tabs and spaces
set shiftwidth=2
set tabstop=2
set expandtab

" filetype detection
filetype on
filetype indent on
filetype plugin on

" syntax highlighting
syntax on
set background=dark
colorscheme solarized

" spell checking
set spell

" enable compiler support for ruby
autocmd FileType ruby compiler ruby

" make enter select item in popup menu
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

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

" ctrlp
let g:ctrlp_show_hidden = 1

" python-mode
let g:pymode_options_colorcolumn = 0

" do vim not wrong
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" guff
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
