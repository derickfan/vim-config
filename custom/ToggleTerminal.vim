let g:term_buf = 0
let g:term_win = 0

function! ToggleTerminal()
	if win_gotoid(g:term_win)
		hide
	else
		"botright new
		split
		exec "resize " . 12
		try
			exec "buffer " . g:term_buf
		catch
			terminal
			"call termopen($SHELL, {"detach": 0})
			let g:term_buf = bufnr("")
		endtry
		startinsert!
		let g:term_win = win_getid()
	endif
endfunction

nnoremap <M-t> :call ToggleTerminal()<CR>
inoremap <M-t> <Esc>:call ToggleTerminal()<CR>
tnoremap <M-t> <C-\><C-n>:call ToggleTerminal()<CR>
