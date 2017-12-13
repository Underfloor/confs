set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" General plugins
Plug 'airblade/vim-gitgutter'
Plug 'sickill/vim-monokai'
Plug 'wikitopian/hardmode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --js-completer --clang-completer' }

" Files plugins
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ctrlpvim/ctrlp.vim'

" Typescript plugins
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }

" Twig plugins
Plug 'nelsyeung/twig.vim', { 'for' : ['html', 'twig', 'html.twig.js.css'] }
Plug 'chrisbra/Colorizer', { 'for' : ['html', 'css', 'less', 'twig', 'html.twig.js.css'] }

" Kerboscript plugins
Plug 'yump/vim-kerboscript', { 'for': 'kerboscript' }

call plug#end()

syntax on
filetype indent plugin on
set relativenumber
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set cursorline
colo monokai
set colorcolumn=120

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
let g:syntastic_typescript_tsc_args = '--target ES5'

"nerdTree
nnoremap <silent> <Leader>e :NERDTreeFind<CR>
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeShowLineNumbers = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" tsuquyomi
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1

"HardMode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

autocmd VimEnter * NERDTree | wincmd p
autocmd vimenter,bufnewfile,bufreadpost * silent! call HardMode()
setlocal completeopt+=menu,preview
