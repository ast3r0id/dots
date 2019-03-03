" # Sugar neovim configuration
"
" File: init.vim
" Author: DŻ
" Date: Sun, 01 Oct 2017 20:13:30
"
" This is file is part of the personal Windows neovim configuration
"

" ## Generic Settings
"
" Set vim directory path
let $VIMPATH='~/.config/nvim'

" ## Key Mappings
"
source $VIMPATH/mappings.vim

" ## Plugins
"
source $VIMPATH/plugins.vim


"*****************************************************************************
" Basic Setup
"*****************************************************************************
set nocompatible
set termguicolors
set ttimeout
set ttimeoutlen=10
let g:enable_bold_font = 1 
let g:enable_italic_font = 1
set showmatch                   " Show matching brackets

set linespace=0                 " Set line-spacing to minimum
set nojoinspaces                " Prevets inserting two spaces after puncturation on a join(J)

" Splits
set splitbelow                  " Horizontal split below current.
set splitright                  " Vertical split to right of current.

if !&scrolloff
    set scrolloff=3             " Show next 3 lines while scrolling
endif
if !&sidescrolloff
    set sidescrolloff=5         " Show next 5 columns while side-scrolling
endif
set nostartofline               " Do not jump to first character with page commands.

" Encoding
"set encoding=utf-8
"set fileencoding=utf-8
"set fileencodings=utf-8

" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Directories for swp files
set nobackup
set noswapfile

" Searching 
set hlsearch
set noincsearch
set ignorecase
set smartcase

set textwidth=0

" Relative numbering
function! NumberToggle()
    if(&relativenumber == 1)
        set nornu
        set number
    else
        set rnu
    endif
endfunc
" Automatic Indentation
set smartindent

" Set folding method and leave all folds open
"set foldenable
"setlocal foldmethod=marker
set foldlevel=99
" File Types
"
" enable filetype detection:
filetype on
filetype plugin on
filetype indent on 

"*****************************************************************************
" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

" Minimal number of screen lines/column to keep
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

" Background
set background=dark

" Color Scheme
colorscheme inkpot



