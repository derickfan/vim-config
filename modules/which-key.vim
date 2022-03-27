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

"Git
let g:which_key_map.g = {
	\ 'name': '+git',
	\ 'j': 'next-hunk',
	\ 'k': 'prev-hunk',
	\ 't': 'toggle-hunk',
	\ 'a': 'add',
	\ 'e': 'edit',
	\ 's': 'status',
	\ 'l': 'log',
	\ 'd': 'diff',
	\ 'c': 'commit',
	\ 'p': 'push',
	\ 'P': 'pull',
	\ 'b': 'browse',
	\ 'v': 'commit-browser',
	\ 'V': 'commit-file-browser',
	\ }

"Startify
let g:which_key_map.s = {
	\ 'name': '+startify',
	\ 'c': 'close',
	\ 'l': 'load',
	\ 's': 'save',
	\ 'S': 'startify',
	\ }
"ETC
let g:which_key_map.r = 'source'

"Key Mappings
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
