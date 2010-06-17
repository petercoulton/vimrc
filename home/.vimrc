
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

  set laststatus=2   " Always show the status line

  set scrolloff=3     " Keep 3 lines when paging

  set mouse=a         " Double-click |bars| in help files

  set ttyfast         " Tell vim this is a fast terminal don't hold back


  if has("autocmd")
    autocmd Filetype java setlocal ts=4 sw=4 noexpandtab
    autocmd Filetype javascript setlocal ts=4 sw=4
  end


",v brings up .vimrc
  map ,v :sp ~/.vimrc<CR><C-W>_

",V reloads it -- making all changes active (have to save first)
  map <silent> ,V :w<CR>:source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Toggle display hidden characters
  map <F8> :set list!<CR>

" Switch between next next and previous buffer
  map <F1> :bprevious<CR>
  map <F2> :bnext<CR>
  map <F3> :b#<CR>
  map <F4> :clo<CR>

  if has("gui_running")
    colorscheme native
  end

