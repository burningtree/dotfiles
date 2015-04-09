set nocompatible

syn on
set number
set showmode
set ruler
"set exrc
set showmatch
set ignorecase
set shiftwidth=2
set tabstop=2
"set cindent
set hlsearch
set nocp
set wildmenu
set encoding=utf8

set ignorecase
set smartcase
set incsearch
set gdefault
set history=50
set showcmd
set smartindent
set expandtab

" GUI options
set gfn=Terminus\ 10
set guioptions-=T

" Highlight current line in insert mode.
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" html jinja/twig syntax highlight
au BufRead,BufNewFile *.twig set syntax=htmljinja

" enable pathogen
execute pathogen#infect()

" set colors to seoul256 [https://github.com/junegunn/seoul256.vim]
colo seoul256-light

" no backup
set nobackup
set nowritebackup
set noswapfile

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_shell = "tcsh"
