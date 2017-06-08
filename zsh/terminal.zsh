case $TERM in
    xterm*)
        precmd () { print -Pn "\e]0;%n@%m \a" }
        ;;
esac
