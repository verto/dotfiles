source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xset b off
xset r rate 250 60

export DESKTOP_SESSION=gnome
export QT_AUTO_SCREEN_SCALE_FACTOR=0

export GDK_SCALE=0
export ELM_SCALE=0

setxkbmap -layout us -variant intl
exec i3
