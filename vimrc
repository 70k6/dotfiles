filetype on
syntax on
filetype indent on

set encoding=utf-8
set background=dark
colorschem gruvbox
set number
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set guifont=Menlo\ Regular:h13
set colorcolumn=80
set textwidth=79
set scrolloff=3
set ruler
set laststatus=2
set statusline=%t\ %y\ [line:\ %l]\ [col:\ %c]\ [format:\ %{&ff}]
set title

autocmd FileType make setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 
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


"set pastetoggle=<F5>
map <F5> :call CompileRun()<CR>
map <F4> :call FormatRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'go'
        exec "!time go run %"
    endif
endfunc

func! FormatRun()
    exec "w"
    if &filetype == 'python'
        exec "0,$!yapf"
    endif

    if &filetype == 'go'
        exec "0,$!gofmt"
    endif
endfunc

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

