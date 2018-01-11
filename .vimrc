set cursorline
set relativenumber

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
