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
call pathogen#helptags()

syntax on
filetype plugin indent on

let mapleader=','

set history=1000
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set virtualedit=all
set backspace=indent,eol,start
set scrolloff=7

"set list
set listchars=tab:▷⋅
set listchars+=trail:⋅
set listchars+=nbsp:.
set listchars+=eol:¶
nmap <leader>l :set list!<cr>

set number
set ruler
set hidden
nmap <silent> <leader>d :bd<cr>
nmap <silent> <leader>D :bd!<cr>

" Status Line
set statusline=
set statusline+=%<      " 
set statusline+=%f      " Filename

set statusline+=\ %y    " Filetype
set statusline+=%m      " Modified flag

set statusline+=%=      " Left/Right seperator

set statusline+=%02b:0x%02B

set statusline+=\ [%03c,%03l/%03L]
set statusline+=\ %P

set cmdheight=2
set laststatus=2


nmap <leader>r :so $MYVIMRC<cr>
nmap <leader>e :e $MYVIMRC<cr>

nmap <leader>f :CommandTFlush<cr>

nmap <silent> <leader>rb :setf ruby<cr>
nmap <silent> <leader>hl :setf haml<cr>
nmap <silent> <leader>sh :setf bash<cr>
nmap <silent> <leader>cc :setf cucumber<cr>

syntax on
colorscheme grb2

if has("gui_running")
  set cursorline
  colorscheme molokai2
  set guifont=DejaVu\ Sans\ Mono\ 10

  highlight iCursor guifg=white guibg=steelblue
  set guicursor=n-v-c:block-Cursor
  set guicursor+=i:ver1-iCursor
endif



