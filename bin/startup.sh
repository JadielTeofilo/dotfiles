xrandr -s 1920x1080
i3-msg 'workspace 1:  Media; exec /usr/bin/firefox'
sleep 1
i3-msg 'workspace 2: Code ; exec code'
sleep 3 
i3-msg 'workspace 3: Term ; exec /usr/bin/terminator'
nohup clipster -d &
nohup guake &
nohup flameshot &
setxkbmap -layout us,br
setxkbmap -option 'grp:alt_shift_toggle'
sleep 1
i3-msg 'workspace 1: Media '
xset s off
xset -dpms
