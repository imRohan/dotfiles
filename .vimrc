"Rohan Likhite
set nocompatible              " be iMproved, required
syntax on
filetype off                  " required
set encoding=utf-8
set laststatus=2              " requried for airline
set conceallevel=0

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/kchmck/vim-coffee-script'
Plugin 'https://github.com/Yggdroot/indentLine'
Plugin 'https://github.com/jiangmiao/auto-pairs'


" set theme
let g:solarized_termtrans = 1
set term=xterm-256color
set background=light
colorscheme solarized

" 80 char line
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=0 guibg=lightgrey

" set font
set guifont=Inconsolata\ for\ Powerline:h15
let g:airline_powerline_fonts = 1

" enable line numbers
set number
let g:indentLine_enabled = 1

" tab settings
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Window Movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" run the following when VIM opens
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" alias commands 
noremap <C-a> :CtrlP ~<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
" enable syntax
syntax enable
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

