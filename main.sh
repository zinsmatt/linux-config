option=$1
sudo apt -y install build-essential

sudo apt -y install git git-gui

me=$(whoami)


cd ~
mkdir dev
mkdir opt
mkdir lib

# generate ssh key
ssh-keygen -o -t rsa -b 4096 -C "$me"


if [ "$option" = "all" ]; then
  echo "Install all the configs"
  ./atom.sh
  ./google-chrome.sh
  ./themes.sh
  ./terminator.sh
  ./qt5.sh
  ./miniconda.sh
  ./cmake.sh
fi

sudo apt -y install gparted

echo "End"
