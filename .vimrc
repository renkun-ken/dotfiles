set nocompatible              " be iMproved, required
filetype plugin indent on
syntax on

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'altercation/vim-colors-solarized'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
call plug#end()

set t_Co=256
set encoding=utf-8
set background=dark
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set mouse=a
set number
set showmatch
set smarttab
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set textwidth=0
set wrapmargin=0
set formatoptions=c,q,r,t
set ruler
set nowrap

let g:airline_theme='dark'
let base16colorspace=256

colorscheme Tomorrow-Night

