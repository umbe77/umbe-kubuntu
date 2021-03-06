#!/usr/bin/env bash

echo "manual install of ripgrep for bug in apt package"
apt-get download ripgrep
sudo dpkg --force-overwrite -i ripgrep*.deb

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Installing starship prompt"
curl -fsSL https://starship.rs/install.sh | bash

echo "Installing LazyDocker"
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

#Installare exa a mano per il momento

echo "Intalling vscode and insomnia from snap"
sudo snap install code --classic
sudo snap install insomnia

#echo "installing nvm"
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
