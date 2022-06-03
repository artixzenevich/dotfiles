"Plugins"
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'akinsho/toggleterm.nvim'

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

"NERDTree settings"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"Emmet settings"

:let mapleader = ","
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,sass EmmetInstall

"Editor settings"

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set copyindent
set autoindent
set mouse=a
set number
set clipboard=unnamedplus
