let mapleader = " "

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set cursorline
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'sunjon/shade.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

nmap <F8> :TagbarToggle<CR>

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

colorscheme PaperColor
