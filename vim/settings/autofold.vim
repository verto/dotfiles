" set fdm=syntax fen
" augroup closeCommentFolds
"    au!
"    au FileType javascript %foldo | g/^\/\*/foldc
"    au FileType typescript g/^\/\*/foldc
"    au FileType ruby %foldo | g/^=begin/foldc
" augroup end

nnoremap <silent> ,c :g/^\/\*/foldc<CR>
