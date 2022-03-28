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
:set hidden
:set splitbelow

"Key Mappings
let g:mapleader = "\<Space>"
imap jk <Esc>
nmap <leader>r :source ~/.config/nvim/init.vim<CR>
tnoremap <Esc> <C-\><C-n>

"Pane Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Pane Size Management
nnoremap <M-j> :resize +2<CR>
nnoremap <M-k> :resize -2<CR>
nnoremap <M-h> :vertical resize +2<CR>
nnoremap <M-l> :vertical resize -2<CR>

"Autocmd
autocmd TermOpen * set nonumber
autocmd TermOpen * set norelativenumber
