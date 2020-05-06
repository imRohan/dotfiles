"Rohan Likhite

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/terryma/vim-smooth-scroll'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/leafgarland/typescript-vim'
call plug#end()

set nocompatible              " be iMproved, required
syntax on
filetype off                  " required
set encoding=utf-8
set laststatus=2              " requried for airline
set conceallevel=0
set noswapfile

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

" enable rainbow 
let g:rainbow_active = 1

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
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Smooth Scroll Movement
noremap <silent> <c-i> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-u> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" alias commands 
noremap <C-a> :CtrlPClearCache<CR>

" open splits in vertical/horizontal depending on screen size
noremap <C-W>v :vsp <CR>
noremap <C-W>h :sp <CR>

" enable syntax
syntax enable
