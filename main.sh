sudo apt -y install git git-gui
me=$(whoami)


cd ~
mkdir dev
mkdir opt
mkdir lib

# generate ssh key
ssh-keygen -o -t rsa -b 4096 -C "$me"
