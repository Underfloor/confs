set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/indentLine'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sickill/vim-monokai'
Plugin 'wikitopian/hardmode'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

syntax on
filetype indent plugin on
set relativenumber
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set cursorline
colo monokai
set colorcolumn=80

let g:indentLine_conceallevel = 0

"Lets
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
let g:HardMode_level = 'wannabe'

"syntastics
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['jshint', 'jsonlint']
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_typescript_tsc_args = '--target ES6'

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"nerdTree
nnoremap <silent> <Leader>e :NERDTreeFind<CR>
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1

nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

autocmd vimenter,bufnewfile,bufreadpost * silent! call HardMode()
setlocal completeopt+=menu,preview
