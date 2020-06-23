#!/usr/bin/env bash

u_install() {
    sudo apt install -y $1
}

echo "Add Rpositories"
echo "========================="
echo "Add alacritty repo"

yes | sudo add-apt-repository ppa:mmstick76/alacritty

echo "Add Typora repo"
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
yes | sudo add-apt-repository 'deb https://typora.io/linux ./'

echo "Add LazyGit repo"
yes | sudo add-apt-repository ppa:lazygit-team/release

sudo apt update -y

list=(
build-essential
software-properties-common
dirmngr
apt-transport-https
lsb-release
ca-certificates
sxhkd
nitrogen
zsh
nemo
nemo-fileroller
dunst
unclutter
xautolock
compton
udisks2
udiskie
blueman-applet
network-manager
network-manager-gnome 
alacritty
chromium
arandr
imagemagick
lxappearance
lxrandr
playerctl
pulseaudio
pavucontrol
alsa-tools
alsa-utils
volumeicon-alsa
python3-pip
qutebrowser
zenity
neovim
sshfs
fonts-firacode
breeze
w3m
materia-gtk-theme
neofetch
papirus-icon-theme
ripgrep
docker
docker-compose
bat
jq
ssh-askpass
ssh-askpass-gnome
ssh-askpass-fullscreen
rofi
tmux
unace
unrar
zip
unzip
sharutils
uudeview
arj
cabextract
file-roller
htop
snap
snapd
typora
lazygit
)

for name in "${list[@]}" ; do
    u_install $name
done

echo "set docker permissions"
sudo groupadd docker
sudo usermod -aG docker $USER

echo "change defaul shell"
chsh -s $(which zsh)

