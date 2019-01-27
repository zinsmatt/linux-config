sudo apt install -y gnome-tweak-tool

# Paper theme
sudo add-apt-repository -y -u ppa:snwh/ppa
sudo apt install -y paper-icon-theme

echo "Select paper icons"
echo "In Windows select Alt to move"
gnome-tweaks

echo "Devices -> Keyboard -> change resize window to Ctrl + ²"
gnome-control-center

sudo apt -y install chrome-gnome-shell
echo "Install chrome GNOME plugin:"
echo "https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep"
echo "and install:"
echo " - workspace-grid"
echo "- hide-top-bargrid worksp"
