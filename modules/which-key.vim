"Settings
let g:which_key_use_floating_win = 0
let g:which_key_map = {}

"Telescope
let g:which_key_map.f = {
	\ 'name': '+telescope',
	\ 'f': 'file_files',
	\ 'g': 'live_grep',
	\ 'b': 'buffers',
	\ 'h': 'help_tags',
	\ 'G': 'git_files',
	\ }

"Key Mappings
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
