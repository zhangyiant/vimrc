call plug#begin('~/.vim/plugged')

"Plug 'Valloric/YouCompleteMe'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ryanolsonx/vim-lsp-python'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

filetype plugin indent on

let hostname=trim(system("hostname"))
if hostname == "SHAPC13N2SS"
    set guifont=Consolas:h14
elseif hostname == "home-pc"
    set guifont=Consolas:h16
endif
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

set foldmethod=indent
set ruler
set ignorecase
colorscheme darkblue
set wildmode=longest:full
set wildmenu

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
if executable('clangd')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'clangd',
                \ 'cmd': {server_info->['clangd', '-background-index']},
                \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                \ })
endif
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
