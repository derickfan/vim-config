"Settings
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set cursorline
:set mouse=a
:set timeoutlen=500

"Key Mappings
let g:mapleader = "\<Space>"
imap jk <Esc>
nmap <leader>r :source ~/.config/nvim/init.vim<CR>

"Autocmd
autocmd TermOpen * set nonumber
autocmd TermOpen * set norelativenumber
