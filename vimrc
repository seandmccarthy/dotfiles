set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

" File tree
Bundle 'scrooloose/nerdtree'

" Smart tab
Bundle 'ervandew/supertab'

" Control + P for fuzzy file open
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 0

Bundle 'mileszs/ack.vim'

filetype plugin indent on     " required!

set expandtab
set shiftwidth=2
set softtabstop=2
syntax on
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
