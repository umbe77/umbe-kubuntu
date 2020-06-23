#!/usr/bin/env bash

echo "Installing qtile xcffib"
sudo pip3 install xcffib
echo "Installing qtile cairocffi"
sudo pip3 install --no-cache-dir cairocffi
echo "Installing qtile WM"
sudo pip3 install qtile
echo "Installing ranger file manager"
sudo pip3 install ranger-fm
echo "Installing ueberzug"
sudo pip3 install ueberzug
echo "Installing pywal"
sudo pip3 install pywal
echo "Installing xparser module"
sudo pip3 install xparser
echo "Installing neovim python provider"
python3 -m pip install --user --upgrade pynvim
