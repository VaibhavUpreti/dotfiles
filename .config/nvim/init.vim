"	 curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"

" curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"

set autoindent
set complete+=kspell
set completeopt=menuone,longest
set encoding=UTF-8
set mouse=a
set number
set nocompatible
set shiftwidth=4
set smarttab
set shortmess+=c
set softtabstop=4
set tabstop=4

" Omnicomplete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1



filetype off

call plug#begin('~/.config/nvim/plugged')

" Gruvbox theme
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'

"
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim snippets && syntax highlighting
Plug 'sirver/ultisnips'
Plug 'Shougo/neocomplete.vim'


"Python Plugins
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'

" Misc plugins

Plug 'tpope/vim-commentary' "Comment out code gc

"Discord Presence
Plug 'andweeb/presence.nvim'

" CodeClimate Extension Vim

Plug 'wfleming/vim-codeclimate'


" Automatically show Vim's complete menu

Plug 'vim-scripts/AutoComplPop'

Plug 'Shougo/neocomplete.vim'
" Added Today PlugIns

" Gitsigns
Plug 'lewis6991/gitsigns.nvim'

"Fonts
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


Plug 'Xuyuanp/nerdtree-git-plugin'


" Rails and ruby plugins

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Git lens like plugin
Plug 'APZelos/blamer.nvim'


call plug#end()
"Functions


let g:python3_host_prog = '/Users/vaibhavupreti/.pyenv/shims/python3'
let g:python_host_prog = '/Users/vaibhavupreti/.pyenv/shims/python'

colorscheme gruvbox
let g:airline_theme='gruvbox'
" Nerd Syntax highlight
"
"
" let g:NERDTreeLimitedSyntax = 1

if (has("termguicolors"))
	set termguicolors
endif
lua require 'colorizer'.setup()

"NerdTree

let g:NERDTreeQuitOnOpen = 0


"nmap<tab> :NERDTreeToggle<CR>
"
nmap <tab> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeLimitedSyntax = 1

let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeIgnore = ['^node_modules$']

let NERDTreeShowHidden=1


" you can add these colors to your .vimrc to help customizing
"
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExtensionHighlightColor['.rb'] = s:red " sets the color of css files to blue


let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb


let g:NERDTreeExtensionHighlightColor = {} "this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['.rb'] = s:rspec_red " sets the color of css files to blue
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'cpp', 'rb', 'js', 'css', 'html', 'erb'. 'go', 'hs', 'jpg', 'json', 'png', 'markdown', 'md' , 'pl' , 'py' , 'rs', 'scss' , 'sh' , 'sql' , 'vim' , 'yml' , 'yaml']


" enabled extensions with default colors

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

" If you have vim-devicons you can customize your icons for each file type.
let g:NERDTreeExtensionHighlightColor = {} "this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = '' "assigning it to an empty string will skip highlight
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
" set g:NERDTreeExtensionHighlightColor if you want a custom color instead of the default one

let g:NERDTreeHighlightCursorline = 0


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


" Blamer- gitlens like plugin
let g:blamer_enabled = 1


"ShortCut Pane navigation

"map<>


"	Discord Presence
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
"let g:presence_log_level		   =
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}
let g:presence_show_time           = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"


"Gitsigns

lua << EOF
require('gitsigns').setup()
EOF
