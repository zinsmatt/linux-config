cur_dir=$(pwd)

mkdir ~/opt/cmake

cd ~/lib

git clone https://github.com/Kitware/CMake.git
cd CMake
git checkout v3.10.2


me=$(whoami)
./bootstrap --prefix=/home/$me/opt/cmake
make -j8
make install

echo -e "\n# CMake" >> ~/.bashrc
echo -e 'export PATH=$PATH:/home/$me/opt/cmake/bin\n' >> ~/.bashrc
source  ~/.bashrc

# ccmake
sudo apt -y install libncurses5-dev zlib1g-dev libcurl4-openssl-dev
cmake . -DBUILD_CursesDialog=ON -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF -DCMAKE_USE_SYSTEM_CURL=ON
make -j8
make install

# cmake-gui
# Requires Qt5 installed
cmake . -DBUILD_QtDialog=ON -DQt5Core_DIR=/home/$me/Qt/5.10.1/gcc_64/lib/cmake/Qt5Core \
        -DQt5Gui_DIR=/home/$me/Qt/5.10.1/gcc_64/lib/cmake/Qt5Gui \
        -DQt5Widgets_DIR=/home/$me/Qt/5.10.1/gcc_64/lib/cmake/Qt5Widgets
make -j8
make install

cd $cur_dir
