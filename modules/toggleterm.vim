"Settings
let g:toggleterm_terminal_mapping = '<M-t>'

"Key Mappings
nnoremap <silent><M-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent><M-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
