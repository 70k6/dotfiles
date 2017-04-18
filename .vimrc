filetype on
syntax on
filetype indent on
colorschem tomorrow-night

set encoding=utf-8

set number
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set guifont=Menlo\ Regular:h13
set colorcolumn=80
set textwidth=79
set scrolloff=3
set ruler
set laststatus=2
set statusline=%t\ %y\ [line:\ %l]\ [col:\ %c]\ [format:\ %{&ff}]
set title

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 
autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

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


map ,l :r!cat ~/.vim/lorem<CR><ESC>kJ
map ,c :r!cat ~/.vim/lorem_ch<CR><ESC>kJ

nmap <leader><space>  :nohlsearch<CR>
map <leader>s :source ~/.vimrc<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
inoremap <C-A> <Home>
inoremap <C-E> <End>

nmap ,1 :b1<CR>
nmap ,2 :b2<CR>
nmap ,3 :b3<CR>
nmap ,4 :b4<CR>
nmap ,5 :b5<CR>
nmap ,6 :b6<CR>
nmap ,0 :bnext<CR>
nmap ,9 :bprev<CR>

nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>

inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
