set cursorline
set relativenumber

" Set GUI
set guioptions-=m  "remove menu bar"
set guioptions-=T  "remove toolbar"
set guioptions-=r  "remove right-hand scroll bar"
set guioptions-=L  "remove left-hand scroll bar"

" 
nmap <F8> :TagbarToggle<CR>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'nightsense/simplifysimplify'
Plug 'szw/vim-tags'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'keith/parsec.vim'
call plug#end()

colorscheme torte
set undofile
set sts=4
set ts=4
set sw=4
set expandtab
set autoindent
syn on
