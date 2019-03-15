#!/bin/bash
# icon from http://www.iconfinder.com/icondetails/17547/48/prompt_terminal_icon
# xseticon from http://www.leonerd.org.uk/code/xseticon/
# Solutions from
# http://superuser.com/questions/363614/leave-xterm-open-after-task-is-complete
# http://unix.stackexchange.com/questions/3197/how-to-identify-which-xterm-a-shell-or-process-is-running-in
# http://unix.stackexchange.com/questions/16774/how-to-assign-an-icon-to-a-program-in-openbox

running=$(ps aux | grep "xterm" | grep -v "grep" | grep -c "xterm")

if [ "$running" -gt "7" ];then
running=0
fi

snark=$(echo $WINDOWID)
xseticon -id $snark /home/verto/dev/dotfiles/icons/code-icon.png
wmctrl -i -r "$snark" -T "xterm"
