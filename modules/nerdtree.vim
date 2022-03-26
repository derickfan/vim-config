"Settings
let NERDTreeChDirMode = 2
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1

"Key Mappings
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-g> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Auto
autocmd VimEnter * NERDTree
