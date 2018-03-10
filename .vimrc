"Rohan Likhite
set nocompatible              " be iMproved, required
syntax on
filetype off                  " required
set encoding=utf-8
set laststatus=2              " requried for airline
set conceallevel=0
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/vim-airline/vim-airline-themes'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/Yggdroot/indentLine'
Plugin 'https://github.com/jiangmiao/auto-pairs'
Plugin 'https://github.com/flazz/vim-colorschemes'
Plugin 'https://github.com/alvan/vim-closetag'
Plugin 'https://github.com/sheerun/vim-polyglot'
Plugin 'https://github.com/godlygeek/tabular'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'https://github.com/gko/vim-coloresque'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" set font
let g:enable_bold_font = 1
set guifont=Inconsolata\ for\ Powerline:h15

" Theme Settings
set t_Co=256
colorscheme Tomorrow-Night-Eighties
let g:airline_powerline_fonts = 1
let g:airline_theme = "angr"

" 80 char line
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=0 guibg=lightgrey

" enable line numbers
set number
let g:indentLine_enabled = 1

" show whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" tab settings
filetype plugin indent on
set ff=unix
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
retab

" Silver Searcher setting
let g:ag_working_path_mode="r"

" Window Movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" run the following when VIM opens
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" alias commands 
noremap <C-a> :CtrlP ~<CR>

" enable syntax
syntax enable
