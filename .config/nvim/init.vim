" curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"


set number
set nocompatible 		" be improved, required
filetype off
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox

