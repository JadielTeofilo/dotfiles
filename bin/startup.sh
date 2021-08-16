xrandr -s 1920x1080
i3-msg 'workspace 1:  Media; exec /usr/bin/firefox'
sleep 1
i3-msg 'workspace 2:  Code; exec code'
sleep 1
i3-msg 'workspace 3:  Term; exec /usr/bin/terminator'
nohup clipster -d &
nohup guake &
setxkbmap -layout us,br
setxkbmap -option 'grp:alt_shift_toggle'
sleep 1
i3-msg 'workspace 2:  Code'
