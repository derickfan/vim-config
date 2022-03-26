"Settings
let g:startify_lists = [
	\ { 'type': 'sessions',		'header': ['	Sessions']			},
	\ { 'type': 'files',		'header': ['	Files']				},
	\ { 'type': 'dir',			'header': ['	CWD']				},
	\ { 'type': 'bookmarks',	'header': ['	Bookmarks']			},
	\ ]

let g:startify_session_before_save = ['silent! tabdo NERDTreeClose']
let g:startify_custom_header = ""

"Key Mappings
nnoremap <leader>sc :SClose<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>sl :SLoad<CR>
nnoremap <leader>sS :Startify<CR>
