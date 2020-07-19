" plug-in manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Plug 'vimwiki/vimwiki'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

let g:seoul256_background = 233
colorscheme seoul256

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set nocompatible
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" parenthesis closing
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" visual stuff
syntax on
" colorscheme desert

set relativenumber

" save before executing
set autowrite

set ignorecase
set smartcase
