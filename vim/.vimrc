" Nerd tree 
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Color scheme setup.
packadd! dracula
syntax enable
colorscheme dracula


" General Settings
set number relativenumber

