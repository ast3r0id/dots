" # Sugar neovim configuration
"
" File: plugins.vim
" Author: DŻ
" Date: Sun, 01 Oct 2017 22:13:44
"
" This is file is part of the personal Windows neovim configuration
"

" ##  Plugins
"
" Plugins are managed by vim-plug.

call plug#begin('~/nvim-pluggins/')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'gregsexton/MatchTag'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim'
Plug 'kopischke/vim-stay'

" Org-mode plugins
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"Plug 'ervandew/supertab'

call plug#end()

" NERDTree: directory tree viewer
"
"
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=0
let NERDTreeCaseSensitiveSort = 1
"
map <F9> :NERDTreeToggle <CR>

" NERDCommenter
"
"

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Syntastic
"
"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = " "

" Deoplete
"
"
let g:deoplete#enable_at_startup = 1

" UltiSnips: snippets engine
"
"
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
nnoremap <Leader>se :UltiSnipsEdit<cr>

" Airline
"
"
let g:airline_theme='dracula'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#fnameod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 0 

let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'


let g:syntastic_python_checkers = ['flake8']
let g:syntastic_cpp_checkers = ['clang_check']

" Vim-orgmode
"
"

" CtrlP settings
"
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
