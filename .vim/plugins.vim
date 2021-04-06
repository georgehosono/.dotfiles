" enable vim-plug
call plug#begin('~/.vim/plugged')

" Fugitive. A git wrapper
Plug 'tpope/vim-fugitive'

" Automatic completion
Plug 'valloric/youcompleteme'

" Sensible defaults
Plug 'tpope/vim-sensible'

" Python highlighting
Plug 'hdima/python-syntax'
let python_highlight_all=1

" Tons of syntax highlighting
Plug 'sheerun/vim-polyglot'

" Debugger
Plug 'joonty/vdebug'

" end plugins
call plug#end()
