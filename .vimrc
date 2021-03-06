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
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/terryma/vim-smooth-scroll'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'https://github.com/rking/ag.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-rails'
Plug 'vim-test/vim-test'
Plug 'elixir-editors/vim-elixir'
call plug#end()

set nocompatible              " be iMproved, required
syntax on
filetype off                  " required
set encoding=utf-8
set laststatus=2              " requried for airline
set conceallevel=0
set noswapfile
set backspace=indent,eol,start

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

" show whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" tab settings
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
map <C-R> :CtrlPClearCache<CR>

" open splits in vertical/horizontal depending on screen size
noremap <C-W>v :vsp <CR>
noremap <C-W>h :sp <CR>

" RSpec.vim mappings
noremap <C-T>f :TestFile<CR>
noremap <C-T>l :TestLast<CR>
