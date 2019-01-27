me=$(whoami)
cur_dir=$(pwd)

sudo apt install gconf-service gconf-service-backend gconf2 gconf2-common libgconf-2-4 libpython-stdlib python python-minimal

cd ~/Downloads
wget https://atom.io/download/deb
mv deb atom.deb

sudo dpkg -i atom.deb

cd $cur_dir
