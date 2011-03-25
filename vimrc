"
"    Vimrc
"
"   ./configure --with-features=huge --enable-multibyte \
"               --enable-rubyinterp --enable-pythoninterp \
"               --enable-gui=gnome2 --with-x \
"               --with-compiledby="Peter Coulton <hi@pcltn.me>"
"
"
"
set nocompatible

filetype off

call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

let mapleader=','

set history=1000
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set virtualedit=all
set cursorline
set backspace=indent,eol,start

"set list
set listchars=tab:▷⋅
set listchars+=trail:⋅
set listchars+=nbsp:.
set listchars+=eol:¶
nmap <leader>l :set list!<cr>

set number
set ruler
set hidden

set cmdheight=2
set laststatus=2


syntax on
colorscheme molokai2

if has("gui_running")
  set guifont=DejaVu\ Sans\ Mono\ 10
endif



