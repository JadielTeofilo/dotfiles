cp -R ~/.config/i3 .config/
cp ~/.config/i3blocks.conf .config/i3blocks.conf
sudo cp /usr/share/i3blocks/mic usr/share/i3blocks
sudo cp /bin/startup.sh bin/startup.sh
git add -A
git commit -m "updating conf $(date)"
git push origin main
