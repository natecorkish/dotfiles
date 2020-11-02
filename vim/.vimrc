" Nerd tree 
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" cntrlp
set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim


" Color scheme setup.
packadd! dracula
syntax enable
colorscheme dracula



" File find
set path++**
set wildmenu
set wildignore++**/node_modules/**


" General Settings
set number relativenumber

