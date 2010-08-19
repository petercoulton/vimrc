
set nocompatible    " This will make Vim behave a bit better, but less Vi compatible

set tabstop=2       " Make tabs 2 spaces wide
set shiftwidth=2    "    
set smarttab        " 
set expandtab       " 

set virtualedit=all " Virtual Whitespace

set autoindent      " Use the current indent level for new lines
set smartindent     " Allow Vim to guess the next lines indent level based on context

set number          " Display line numbers
set ruler           " Show cursor position in status bar
set showcmd
set cmdheight=2

set laststatus=2   " Always show the status line

set scrolloff=7     " Keep 7 lines when paging

set mouse=a         " Double-click |bars| in help files

set ttyfast         " Tell vim this is a fast terminal don't hold back


"  set backspace=indent,eol,start
set listchars=tab:>-,trail:-,eol:¶

if has("autocmd")
  autocmd Filetype java setlocal ts=4 sw=4 noexpandtab
  autocmd Filetype javascript setlocal ts=4 sw=4
end

" Edit the vimrc file
map ,e :e ~/.vimrc<CR>
" Edit the vimrc file in a split
map ,v :sp ~/.vimrc<CR><C-W>_
" Reload the vimrc file
map ,u :source ~/.vimrc<CR>

" Toggle display hidden characters
map <F8> :set list!<CR>

" Switch between next next and previous buffer
map <F1> :bprev<CR>
map <F2> :bnext<CR>
map <F3> :b#<CR>
map <F4> :bwipe<CR>

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

if has("gui_running")
  colorscheme native
  set lines=40 columns=105
end

