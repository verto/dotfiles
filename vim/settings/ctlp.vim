let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> ,b :CtrlPBuffer<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

" Additional mapping for function search
nnoremap <silent> \f :CtrlPFunky<cr>

map ,js :CtrlP src/main/scala<CR>
map ,jr :CtrlP src/main/resources<CR>
map ,jj :CtrlP src/main/java<CR>
map ,ja :CtrlP assets<CR>

map ,ja :CtrlP app/assets<CR>
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,jv :CtrlP app/views<CR>
map ,jj :CtrlP app/assets/javascripts<CR>
map ,jt :CtrlP test<CR>
