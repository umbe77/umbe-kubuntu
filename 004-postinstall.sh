#!/usr/bin/env bash

echo "Installing zsh autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions $XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions

echo "Installing zsh highlight"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting

set_current_city 1
polybar_weather 1

sudo cp qtile.desktop /usr/share/xsessions
