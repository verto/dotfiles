" folding imports
syn region foldImports start=/\(^\s*\n^import\)\@<= .\+/ end=+^\s*$+ transparent fold keepend
