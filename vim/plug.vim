 call plug#begin('~/.vim/bundle')

 Plug 'tpope/vim-fugitive'
 Plug 'kien/ctrlp.vim'
 Plug 'ivalkeen/vim-ctrlp-tjump'
 Plug 'altercation/vim-colors-solarized'
 Plug 'rking/ag.vim'
 Plug 'scrooloose/nerdtree'

 " Plug 'Shougo/neocomplete.vim'
 Plug 'Shougo/deoplete.nvim',  { 'do': ':UpdateRemotePlugs' }
 " Plug 'zchee/deoplete-go'
 " For func argument completion
 " Plug 'Shougo/neosnippet'
 " Plug 'Shougo/neosnippet-snippets'

 Plug 'ntpeters/vim-better-whitespace'
 Plug 'itchyny/lightline.vim'
 Plug 'tacahiroy/ctrlp-funky'

 Plug 'neomake/neomake'

 " git
 " gitk for vim
 Plug 'gregsexton/gitv'
 " post gist
 Plug 'mattn/webapi-vim'
 Plug 'mattn/gist-vim'

 " langs
  "langs pack
 Plug 'sheerun/vim-polyglot'
   " support for textual sinppeets
 Plug 'garbas/vim-snipmate'
  "snippets pack for many langs.
 Plug 'marcweber/vim-addon-mw-utils'
 Plug 'tomtom/tlib_vim'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

  "syntax checking
 Plug 'scrooloose/syntastic'

 " scala
 Plug 'derekwyatt/vim-scala'

 " ruby/rails
 Plug 'tpope/vim-rails'
 Plug 'vim-ruby/vim-ruby'

 " search
  "print numbers of matches
 Plug 'vim-scripts/IndexedSearch'
  "search by selected text in the file
 Plug 'nelstrom/vim-visual-star-search'

 " vim awesome
  Plug 'tpope/vim-surround'
   " create pair tags
  Plug 'tpope/vim-ragtag'
   " auto add to structure code ex. if end
  Plug 'tpope/vim-endwise'
   "easily search for, substitute, and abbreviate multiple variants of a word
  Plug 'tpope/vim-abolish'
  " change code only to selected region
  Plug 'chrisbra/NrrwRgn'
   "tabularizeee :D
  Plug 'godlygeek/tabular'
   "change content inside surroudings
  Plug 'briandoll/change-inside-surroundings.vim'
   "auto completion for quotes, parens, brackets
  Plug 'Raimondi/delimitMate'
   "split multiline and single line
  Plug 'AndrewRadev/splitjoin.vim'
  " commentary
  Plug 'tpope/vim-commentary'

  " colorschema
  Plug 'morhetz/gruvbox'
  Plug 'w0ng/vim-hybrid'
  Plug 'nightsense/stellarized'
  Plug 'cocopon/iceberg.vim'
  Plug 'cocopon/lightline-hybrid.vim'
  Plug 'arcticicestudio/nord-vim'

 " " text-object
 Plug 'kana/vim-textobj-user'
 Plug 'nelstrom/vim-textobj-rubyblock'
 Plug 'kana/vim-textobj-indent'

 Plug 'fatih/vim-go'
 Plug 'sebdah/vim-delve'
 Plug 'jodosha/vim-godebug'

 Plug 'KabbAmine/zeavim.vim'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
 Plug 'junegunn/fzf.vim'

 Plug 'tpope/vim-rhubarb'

 Plug 'Chun-Yang/vim-action-ag'

 Plug 'janko-m/vim-test'
 Plug 'tpope/vim-dispatch'
 Plug 'will133/vim-dirdiff'
 Plug 'vim-scripts/AutoTag.git'

 Plug 'elzr/vim-json'
 Plug 'pangloss/vim-javascript'

 " typescript support
 " Plug 'neovim/node-host', { 'for': 'typescript', 'do': 'npm install -g neovim' }
 " Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
 " Plug 'mhartington/nvim-typescript', { 'for': 'typescript', 'do': './install.sh'}
 " For Denite features
 Plug 'Shougo/denite.nvim', { 'for': 'typescript' }


 " rust
 Plug 'rust-lang/rust.vim'

 call plug#end()
