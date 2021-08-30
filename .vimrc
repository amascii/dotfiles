" VIMPLUG PLUGIN MANAGER
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
" ADD NEW PLUGINS HERE
    Plug 'junegunn/seoul256.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'preservim/nerdtree'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'dense-analysis/ale'
    Plug 'tpope/vim-surround'
"   Plug 'vimwiki/vimwiki'
call plug#end()

let g:ale_python_flake8_options = '--max-line-length=180'
let NERDTreeShowHidden=1

set nocompatible
filetype plugin indent on

set tabstop=4     " show existing tab with 4 spaces width
set shiftwidth=4  " when indenting with '>', use 4 spaces width
set expandtab     " On pressing tab, insert 4 spaces

" CODE FOLDING
set foldmethod=indent
set nofoldenable

" AUTO-CLOSE
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap        {  {}<Left>
inoremap        [  []<Left>
inoremap        "  ""<Left>

" VISUAL 
let g:seoul256_background = 253
colorscheme seoul256
syntax on
set cursorline
set nu
set rnu

" SEARCH
set ignorecase  " case insensitive 
set smartcase   " case sensitive if uppercase letter is found

" BACKSPACE FIX
set backspace=indent,eol,start
