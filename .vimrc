 set nocompatible              " be iMproved, required
 filetype off                  " required
 
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
 
 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
 
 " My Bundles here:
 "
 " original repos on github
 "Plugin 'tpope/vim-fugitive'
 "Plugin 'Lokaltog/vim-easymotion'
 Plugin 'L9'
 "Plugin 'FuzzyFinder'
 Plugin 'scrooloose/nerdtree'
 "tagbar map<F3> that will show all defination of function
 Plugin 'majutsushi/tagbar'
 "Plugin 'garbas/vim-snipmate'
 Plugin 'AutoComplPop'
 " ctags C-]<>C-t, C-w C ]
 Plugin 'ctags.vim' 
 Plugin 'cscope.vim'
 Plugin 'kien/ctrlp.vim'
 "Plugin 'MarcWeber/vim-addon-mw-utils'
 "Plugin 'tomtom/tlib_vim'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

 nmap <silent> <A-Up>    :wincmd k<CR>
 nmap <silent> <A-Down>  :wincmd j<CR>
 nmap <silent> <A-Left>  :wincmd h<CR>
 nmap <silent> <A-Right> :wincmd l<CR>

 nnoremap <silent> <F1> :NERDTree<CR>
 let Tlist_Ctags_Cmd = "/usr/bin/ctags"
 let Tlist_WinWidth = 35
 "map <F3> :TlistToggle<cr> replaced by TagbarToggle
 map <F4> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
 map <F3> :TagbarToggle<CR>
 " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 "
 " nnoremap <silent> <F1> :NERDTree<CR>
 "
 set tabstop=4
 "set softtabstop=4
 set shiftwidth=4
 set expandtab
 set tags=./tags,tags;$HOME
