call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
call plug#end()
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'python': ['yapf'],
\   'go': ['gofmt'],
\}
map <F3> :ALEFix<CR>

let g:airline_theme='simple'
let g:airline#extensions#ale#enabled = 1

colorschem gruvbox
set background=dark


filetype on
syntax on
set encoding=utf-8
set number
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set colorcolumn=0
set textwidth=0
set scrolloff=3
set ruler
set laststatus=2
set title

autocmd FileType make setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 colorcolumn=80 textwidth=79
autocmd FileType go setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8 
autocmd FileType html,htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=2 
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 


set wildmenu
set wildmode=full
set wildignore=*.swp,*.bak,*.pyc,*.class
set showcmd

set hlsearch
set ignorecase
set incsearch
set showmatch

set noerrorbells
set visualbell

set backspace=indent,eol,start

set history=1000
set nobackup
set noswapfile

set autochdir
set shell=zsh

set splitbelow
set splitright


set pastetoggle=<F5>

let mapleader=","
:command! W w
:command! Q q

nmap <leader><space>  :nohlsearch<CR>
map <leader>s :source ~/.vimrc<CR>

nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
imap <C-A> <Home>
imap <C-E> <End>

nmap ,1 :b1<CR>
nmap ,2 :b2<CR>
nmap ,3 :b3<CR>
nmap ,4 :b4<CR>
nmap ,5 :b5<CR>
nmap ,6 :b6<CR>
nmap ,0 :bnext<CR>
nmap ,9 :bprev<CR>

map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>

