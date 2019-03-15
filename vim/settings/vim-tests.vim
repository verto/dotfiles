let g:dispatch_quickfix_height=15
let g:test#runner_commands = ['mocha', 'jest']
let test#strategy = "dispatch"
let g:test#javascript#mocha#file_pattern = '\v.*.(test|spec)s?\.(js|jsx|coffee)$'

"=========== VIm - Test ==========================
nnoremap <silent> ,k :TestFile<CR>
nnoremap <silent> ,s :TestNearest<CR>
nnoremap <silent> ,l :TestLast<CR>
nnoremap <silent> ,a :TestSuite<CR>
" nnoremap <silent> ,gt :TestVisit<CR>
