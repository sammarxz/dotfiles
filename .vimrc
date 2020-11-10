call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree',    { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'spf13/vim-autoclose'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/hexHighlight.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sainnhe/sonokai'

call plug#end()


filetype indent plugin on
syntax on
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme eighties


set clipboard=unnamedplus
set wildmenu
set showcmd
set smartcase
set ignorecase
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set noerrorbells
set mouse=a
set cmdheight=2
set nojoinspaces
set wrap
set linebreak
set nolist
set textwidth=80
set shiftwidth=2
set softtabstop=2
set expandtab
set shortmess+=c
set number


let mapleader = ','

" exit insert mode
imap kj <esc>

" write file insert mode
imap <leader>w <esc> :w<cr>

" write file normal mode
nmap <leader>w :w<cr>

" quit window
nmap <leader>q :q<cr>

" install plugins
nmap <leader>i :PlugInstall<cr>

" switch buffers
nmap <leader>b :bp<cr>

" close buffer
nmap <leader>x :bd<cr>

" split windows
nmap <leader>s :sp<cr><c-w><c-w>
nmap <leader>v :vsp<cr><c-w><c-w>

" toggle nerdtree
map <leader><tab> :NERDTreeToggle<cr>



" tabs shortcuts
map <leader>t :tabnew<cr>
map <leader>> :tabprev<cr>
map <leader>< :tabnext<cr>
map <leader>1 :tabfirst<cr>
map <leader>2 :tablast<cr>

" Using Tab for Emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Plugin: NERDTree
let NERDTreeStatusline= "%{ getcwd() }"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.cache$', '\.git$', '^node_modules$'] "

" show hidden files in NERDTREE
let NERDTreeShowHidden=1

" Plugin: YouCompleteMe
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" Plugin: CtrlP
let g:ctrlp_working_path_mode='r'
let g:ctrlp_custom_ignore = '|.*\/dist\|build\|.*\/node_modules\|.git\|_dev\'
let g:ctrlp_show_hidden = 1

" Plugin: Lightline
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ }

" Plugin: Ale
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'python': ['yapf'],
\}

" Plugin: Snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
