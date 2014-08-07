if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

let mapleader=','

set showmatch

"menues
set guioptions-=m
set guioptions-=T

"line numbers
set number
set ruler

"show trailing tabs and spaces
set list listchars=tab:>-,trail:_,extends:>
autocmd BufWritePre * :%s/\s\+$//e

colorscheme desert
"insensitive search except when using caps
set ignorecase
set smartcase

"whitespace stuff
set autoindent
"set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set linebreak
set showtabline=2
set backspace=indent,eol,start

set hlsearch
map ,n :nohlsearch<CR>

set backupdir=~/.vim/backup/,~/.vim/tmp/
set directory=~/.vim/,~/.vim/backup/,~/.vim/tmp/

" Pathogen load
execute pathogen#infect()
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

"language specific formatting
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 | set expandtab

"vim-flake8
let g:flake8_ignore = "E501,C0110,W0511"
let g:flake8_max_complexity = 15
let g:flake8_max_line_length = 99
autocmd BufWritePost *.py call Flake8()


"jshint
let jshint2_save = 1

" Python-mode stuff
"let g:pymode = 0
"let g:pymode_folding = 0
"let g:pymode_lint_ignore = "E501,C0110,W0511"
"let g:pymode = 1
"let g:pymode_run = 1
"let g:pymode_run_key = '<leader>r'
