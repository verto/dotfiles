filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'ivalkeen/vim-ctrlp-tjump'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplete.vim'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'itchyny/lightline.vim'
Bundle 'tacahiroy/ctrlp-funky'

" git
" gitk for vim
Bundle 'gregsexton/gitv'
" post gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" langs
 "langs pack
Bundle 'sheerun/vim-polyglot'
  " support for textual sinppeets
Bundle 'garbas/vim-snipmate'
 "snippets pack for many langs.
Bundle 'marcweber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
 "syntax checking
Bundle 'scrooloose/syntastic'

" scala
Bundle 'derekwyatt/vim-scala'

" ruby/rails
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'

" search
 "print numbers of matches
Bundle 'vim-scripts/IndexedSearch'
 "search by selected text in the file
Bundle 'nelstrom/vim-visual-star-search'

" vim awesome
Bundle 'tpope/vim-surround'
 " create pair tags
Bundle 'tpope/vim-ragtag'
 " auto add to structure code ex. if end
Bundle 'tpope/vim-endwise'
 "easily search for, substitute, and abbreviate multiple variants of a word
Bundle 'tpope/vim-abolish'
 " yank history
Bundle 'skwp/YankRing.vim'
 " change code only to selected region
Bundle 'chrisbra/NrrwRgn'
 "tabularizeee :D
Bundle 'godlygeek/tabular'
 "change content inside surroudings
Bundle 'briandoll/change-inside-surroundings.vim'
 "auto completion for quotes, parens, brackets
Bundle 'Raimondi/delimitMate'
 "split multiline and single line
Bundle 'AndrewRadev/splitjoin.vim'
" commentary
Bundle 'tpope/vim-commentary'

" colorschema
Bundle 'morhetz/gruvbox'
Bundle 'w0ng/vim-hybrid'

" text-object
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-indent'


call vundle#end()            " required
filetype plugin indent on    " required
