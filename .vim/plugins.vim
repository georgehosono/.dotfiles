" enable vim-plug
call plug#begin('~/.vim/plugged')

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Tons of syntax highlighting
" get all langs highlighted?
Plug 'sheerun/vim-polyglot'
let g:python_highlight_all = 1

" Automatic completion
Plug 'ycm-core/YouCompleteMe'
autocmd ColorScheme *
	\ hi link YcmErrorLine GruvboxRedSign |
	\ hi YcmErrorSection cterm=reverse,bold gui=reverse
let g:ycm_language_server = 
  \ [ 
  \   {
  \     'name': 'md',
  \     'cmdline': [ '/usr/bin/ltex-ls', '--log-file=/tmp/ltex-ls-${PID}.log' ],
  \     'filetypes': [ 'md', 'vimwiki' ]
  \   }
  \ ]

" YCM docs on hover show sooner
set updatetime=2000

" YCM docs on hover have syntax highlighting
let b:ycm_hover = {
    \ 'command': 'GetDoc',
    \ 'syntax': &filetype
    \ }

" YCM docs close after completion
let g:ycm_autoclose_preview_window_after_completion = 1

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

" Linter
Plug 'dense-analysis/ale'
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Sensible defaults
Plug 'tpope/vim-sensible'

" autoclose parens and quotes
Plug 'Raimondi/delimitMate'

" autoclose html tags
Plug 'alvan/vim-closetag'

" Vim wiki
Plug 'vimwiki/vimwiki'
set nocompatible
filetype plugin on

" Nice status bar. TODO figure out what it does
Plug 'vim-airline/vim-airline'
" see https://github.com/vim-airline/vim-airline/issues/393#issuecomment-177191552
set t_RV=

" Show which lines will have git diffs in the sidebar
Plug 'airblade/vim-gitgutter'
"set updatetime=100
"let g:gitgutter_highlight_lines = 0

" Be able to show a file tree
" TODO on by default?
Plug 'preservim/nerdtree'

" Show git status in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Show nice icons in nerdtree
Plug 'ryanoasis/vim-devicons'

" Highlight files in nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Nice commenting things
filetype plugin on
Plug 'preservim/nerdcommenter'

" Nifty things for delimaters
Plug 'tpope/vim-surround'

" Git wrapper
" TODO decide if this should be a thing in vim?
" Plug 'tpope/vim-fugitive'

" end plugins
call plug#end()
