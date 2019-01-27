sudo apt install -y gnome-tweak-tool

# Paper theme
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt install -y paper-icon-theme

echo "Select paper icons"
echo "In Windows select Alt to move"
gnome-tweaks

echo "Devices -> Keyboard -> change resize window to Ctrl + ²"
gnome-control-center
