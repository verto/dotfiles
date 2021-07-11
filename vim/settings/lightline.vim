let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
            \   'right': [
            \             [ 'lineinfo' ],
            \             [ 'percent' ],
            \             [ 'cocstatus', 'fileformat', 'fileencoding', 'filetype' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'FugitiveHead',
            \   'fugitive': 'MyFugitive',
            \   'readonly': 'MyReadonly',
            \   'filename': 'MyFilename',
            \   'cocstatus': 'CocStatus',
            \   'coccurrentfunction': 'CocCurrentFunc',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }

function! MyReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return " "
   else
        return ""
    endif
endfunction

function! MyFugitive()
    if exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? ' '._ : ''
    endif
    return ''
endfunction

function! MyFilename()
    return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
                \ ('' != expand('%') ? expand('%') : '[NoName]')
endfunction

function! CocCurrentFunc()
    let current_func = get(b:, 'coc_current_function', '')
    return current_func
endfunction

function! CocStatus()
    if exists("*coc#status")
        return coc#status()
    endif
    return ''
endfunction
" Use status bar even with
" single buffer
set laststatus=2
