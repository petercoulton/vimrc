
"{{{ Make plugins easier to handle with pathogen
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
"}}}

"{{{ Basics
set nocompatible
set modelines=0

set wildignore=*.class

set encoding=utf-8
set scrolloff=7
set autoindent
set showmode
set showcmd
set hidden            " Hide buffers when switching instead of closing them
set wildmenu          " Turn on improved command autocompletion
"set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set cmdheight=2
set statusline=%<%F%h%m%r%h%w%y%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}\ %{&ff}%=\ \[%b\]\[0x%B\]\ Pos:%v,%l\ Line:%c,%l\ %P
set number
set virtualedit=all
"set relativenumber
"set undofile
"}}}

"{{{ Tabs
set tabstop=2         " Sets the width of a tab character
set shiftwidth=2
set softtabstop=2
set expandtab         " Causes spaces to be inserted instead of tabs
"}}}

"{{{ Movement

"}}}

"{{{ Long line handling
set wrap
set textwidth=79
set formatoptions=qrnl
"set colorcolumn=85
"}}}

"{{{ Show Hidden Characters
set list
set listchars=tab:▸\ ,eol:¬,trail:.
"}}}

"{{{ Code Folding
set foldlevelstart=99
set foldmethod=marker
"}}}

au FocusLost * :wa

"{{{ Leader mappings
let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <silent> <leader>q :bwipe<CR>
nmap <silent> <leader>w :w<CR>

nmap <silent> <leader>n :bnext<CR>
nmap <silent> <leader>p :bprev<CR>

nmap <silent> <leader>v "+gP<CR>
"}}}

"{{{ Key mappings  
inoremap jj <ESC>
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nnoremap j gj
nnoremap k gk
"}}}

"{{{ GVim Stuff
if has("gui_running")
  set guioptions=-m
  colorscheme native
  set cursorline
endif
"}}}




