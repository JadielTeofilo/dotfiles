cp -R ~/.config/i3 .config/
sudo cp /bin/startup.sh bin/startup.sh
git add -A
git commit -m "updating conf $(date)"
git push origin main
