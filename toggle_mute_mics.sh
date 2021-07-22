
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 0/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 0 0 || pacmd set-source-mute 0 1
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 1/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 1 0 || pacmd set-source-mute 1 1
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 2/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 2 0 || pacmd set-source-mute 2 1
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 3/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 3 0 || pacmd set-source-mute 3 1
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 4/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 4 0 || pacmd set-source-mute 4 1

pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 5/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 5 0 || pacmd set-source-mute 5 1
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 6/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 6 0 || pacmd set-source-mute 6 1
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 7/, $p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 7 0 || pacmd set-source-mute 7 1

