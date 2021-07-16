xrandr -s 1920x1080
i3-msg 'workspace 1:Web; exec /usr/bin/firefox'
sleep 5
i3-msg 'workspace 2:Code; exec /usr/bin/pycharm'
sleep 34
i3-msg 'workspace 3:Term; exec /usr/bin/terminator'
clipster -d
