set -o vi
export EDITOR=nvim
export VISUAL=nvim

pb-copy-region-as-kill-deactivate-mark () {
  zle copy-region-as-kill
  zle set-mark-command -n -1
  echo -n $CUTBUFFER | xsel -i -b
}
zle -N pb-copy-region-as-kill-deactivate-mark
bindkey -a "y" pb-copy-region-as-kill-deactivate-mark

pb-kill-whole-line () {
  zle kill-whole-line
  echo -n $CUTBUFFER | xsel -i -b
}
zle -N pb-kill-whole-line
bindkey -a "dd" pb-kill-whole-line

pb-yank () {
  CUTBUFFER=$(pbpaste)
  zle yank
}
zle -N pb-yank
bindkey -a  "p" pb-yank
