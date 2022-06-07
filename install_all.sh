#!/bin/sh

sudo apt-get update

sudo apt-get install git vim curl zsh gzip gawk -y
sudo apt-get install     ca-certificates \
    curl \
    gnupg \
    lsb-release -y


cd ~/
mkdir Installed
cd Installed
git clone https://github.com/JadielTeofilo/dotfiles.git

cd ~/
wget -O- https://baltocdn.com/i3-window-manager/signing.asc | sudo gpg --dearmor > /etc/apt/trusted.gpg.d/i3wm-signing.gpg
sudo apt install apt-transport-https --yes

sudo echo "deb https://baltocdn.com/i3-window-manager/i3/i3-autobuild/ all main" | sudo tee /etc/apt/sources.list.d/i3-autobuild.list

sudo apt update
sudo apt install i3 i3blocks i3lock i3status -y

# Has to be version 1.5.4
sudo apt install rofi=1.5.4 -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp -R ~/Installed/dotfiles/.config/* ~/.config/
sudo cp -R ~/Installed/dotfiles/bin/* /bin/
sudo cp -R ~/Installed/dotfiles/usr/share/* /usr/share/

cd ~/Installed
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.24.11947.tar.gz
tar -xvf jetbrains-toolbox-1.24.11947.tar
nohup ./jetbrains-toolbox-1.24.11947/jetbrains-toolbox

####### Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce -y

sudo usermod -aG docker ${USER}
su - ${USER}
sudo apt-get update

sudo apt-get install docker-compose-plugin


##### TZ data

sudo dpkg-reconfigure tzdata


wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb

sudo apt-get install guake -y

sudo apt-get install compton -y

cd ~/Installed
git clone https://github.com/junegunn/fzf.git
cd fzf
./install
cd ..
git clone https://github.com/mrichar1/clipster.git
sudo cp clipster/clipster /bin/
cd ..
git clone https://github.com/gilbertw1/roficlip.git
sudo cp roficlip/roficlip/roficlip /bin/

cd ~/Installed
wget https://download.jetbrains.com/python/pycharm-community-2022.1.1.tar.gz

sudo apt-get install -y fonts-font-awesome

sudo apt-get install -y nitrogen
sudo apt install flameshot okular python3-pip -y
sudo alias docker-compose="docker compose"
