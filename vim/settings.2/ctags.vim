nnoremap <silent> ,f :CtrlPtjump<cr>
vnoremap <silent> ,f :CtrlPtjumpVisual<cr>

let g:ctrlp_tjump_only_silent = 1

" " use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

" Additional mapping for function search
nnoremap <silent> <C-f> :CtrlPFunky<cr>
