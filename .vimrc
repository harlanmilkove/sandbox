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

"default statusline
set statusline=%m[%F]\ %t
set statusline+=\ %l\:%c

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

"language specific formatting
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2 | set expandtab


"vim-flake8
let g:flake8_ignore = "C0110,W0511"
let g:flake8_max_complexity = 15
let g:flake8_max_line_length = 99
autocmd BufWritePost *.py call Flake8()

"syntastic
set statusline+=\ %#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--max-line-length=99'

"jshint
"let JSHintUpdateWriteOnly=0

" Python-mode stuff
"let g:pymode = 0
"let g:pymode_folding = 0
"let g:pymode_lint_ignore = "E501,C0110,W0511"
"let g:pymode = 1
"let g:pymode_run = 1
"let g:pymode_run_key = '<leader>r'
