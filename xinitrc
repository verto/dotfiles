source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec xfce4-session
