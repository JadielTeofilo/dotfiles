xrandr --output HDMI-1 --brightness 0.6
i3-msg 'workspace 1: Media ; exec /usr/bin/firefox'
sleep 1
i3-msg 'workspace 2: Code ; exec code'
sleep 1
i3-msg 'workspace 3: Term ; exec /usr/bin/terminator'
nohup clipster -d &
nohup guake &
sleep 1
i3-msg 'workspace 2: Code '
