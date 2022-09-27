" curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"

set number
set nocompatible 		" be improved, required
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

filetype off

set autoindent
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'

Plug 'preservim/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sirver/ultisnips'

"Python Plugins
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'


" Misc plugins

Plug 'tpope/vim-commentary'


call plug#end()

"Functions:-

colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
	set termguicolors
endif
lua require 'colorizer'.setup()

"NerdTree
let NERDTreeQuitOnOpen=1
nmap<tab> :NERDTreeToggle<CR>

"Python
syntax on
set t_Co=256

set foldmethod=indent
set foldlevel=99



au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
	\ set expandtab
	\ set fileformat=unix


let g:ale_linters= {'python': ['flake8']}




"ShortCut Pane navigation
map<>


