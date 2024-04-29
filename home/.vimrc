" do vim things
set nocompatible

" load Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'neovim/nvim-lspconfig'
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
set shortmess+=I

" nobackups/swap
set nobackup
set nowritebackup
set noswapfile

" search options
set ignorecase
set smartcase
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

" wat
autocmd BufNewFile,BufRead *.tf set syntax=tf

" make enter select item in popup menu
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" key remapping
let mapleader = '\'
inoremap jj <ESC>

" split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" NERDTree
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$','^\.git$']
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMinimalMenu=1 " https://github.com/preservim/nerdtree/issues/1321#issuecomment-1229071986

" vim-airline
let g:airline_powerline_fonts = 0
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'

" ctrlp
let g:ctrlp_show_hidden = 1

" do vim not wrong
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" syntastic
let g:syntastic_python_checkers = ['python', 'pyflakes']

" vim-go
let g:go_fmt_command = "goimports"

" guff
if $COLORTERM == 'gnome-terminal' || $TERM == 'screen' || $TERM == 'screen-256color'
  set t_Co=256
endif
