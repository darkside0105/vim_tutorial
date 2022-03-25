:set number relativenumber
:set autoindent tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
" :set colorcolumn=80
:set mouse=a
:filetype plugin indent on
:syntax on

call plug#begin()
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' } " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

:set encoding=UTF-8
" :PlugClean :PlugInstall

" :colorscheme blue 
" :colorscheme default
" :colorscheme darkblue
" :colorscheme desert
" :colorscheme delek
" :colorscheme elflord
" :colorscheme evening 
" :colorscheme industry 
" :colorscheme koehler
" :colorscheme morning
:colorscheme murphy
" :colorscheme pablo
" :colorscheme peachpuff
" :colorscheme ron
" :colorscheme shine
" :colorscheme slate
" :colorscheme torte
" :colorscheme zellner 
