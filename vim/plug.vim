call plug#begin('~/.vim/bundle')

" base
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'

" colorschema
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'nightsense/stellarized'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/base16-vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'cocopon/lightline-hybrid.vim'
Plug 'nolo18/base16lightline'

" coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" debug metals
Plug 'puremourning/vimspector'

Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
" post gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" vim awesome
Plug 'tpope/vim-surround'
" commentary
Plug 'tpope/vim-commentary'
"auto completion for quotes, parens, brackets
Plug 'Raimondi/delimitMate'
" langs
 "langs pack
Plug 'sheerun/vim-polyglot'
" Plug 'pseewald/vim-anyfold'



" Plug 'kien/ctrlp.vim'
" Plug 'ivalkeen/vim-ctrlp-tjump'
" Plug 'altercation/vim-colors-solarized'
" Plug 'cseelus/vim-colors-lucid'
" Plug 'Shougo/deoplete.nvim',  { 'do': ':UpdateRemotePlugs' }
" Plug 'tacahiroy/ctrlp-funky'
" Plug 'neomake/neomake'
" git
" gitk for vim
" Plug 'gregsexton/gitv'

" support for textual sinppeets
" Plug 'garbas/vim-snipmate'
"snippets pack for many langs.
" Plug 'marcweber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'

"syntax checking
" Plug 'scrooloose/syntastic'
" scala
" Plug 'derekwyatt/vim-scala'
" ruby/rails
" Plug 'tpope/vim-rails'
" Plug 'vim-ruby/vim-ruby'
" search
"print numbers of matches
" Plug 'vim-scripts/IndexedSearch'
"search by selected text in the file
" Plug 'nelstrom/vim-visual-star-search'
" create pair tags
" Plug 'tpope/vim-ragtag'
" auto add to structure code ex. if end
" Plug 'tpope/vim-endwise'
"easily search for, substitute, and abbreviate multiple variants of a word
" Plug 'tpope/vim-abolish'
" change code only to selected region
" Plug 'chrisbra/NrrwRgn'
"tabularizeee :D
" Plug 'godlygeek/tabular'
"change content inside surroudings
" Plug 'briandoll/change-inside-surroundings.vim'
"split multiline and single line
" Plug 'AndrewRadev/splitjoin.vim'
"  text-object
" Plug 'kana/vim-textobj-user'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'kana/vim-textobj-indent'
" Plug 'sebdah/vim-delve'
" Plug 'jodosha/vim-godebug'
" Plug 'KabbAmine/zeavim.vim'
" Plug 'Chun-Yang/vim-action-ag'
" Plug 'janko-m/vim-test'
" Plug 'tpope/vim-dispatch'
" Plug 'will133/vim-dirdiff'
" Plug 'vim-scripts/AutoTag.git'
" Plug 'elzr/vim-json'
" Plug 'pangloss/vim-javascript'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'Shougo/denite.nvim', { 'for': 'typescript' }
" rust
" Plug 'rust-lang/rust.vim'
" print screen
" Plug 'segeljakt/vim-silicon'

call plug#end()
