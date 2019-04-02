set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'

Bundle 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on

set guifont=Courier:h24
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set encoding=utf-8
set number
set foldmethod=indent
set foldlevel=99
set showcmd
let NERDTreeIgnore=['\.pyc$', '\~$']

set foldmethod=indent
set ruler
set ignorecase
colorscheme darkblue
set wildmode=longest:full
set wildmenu
