mkdir ~/opt/cmake

cd ~/lib

git clone https://github.com/Kitware/CMake.git
cd CMake
git checkout v3.10.3


me=$(whoami)
./bootstrap --prefix=/home/$me/opt/cmake
make -j8
make install

echo 'export PATH=$PATH:/home/matthieu/opt/cmake/bin' >> ~/.bashrc
source  ~/.bashrc

# ccmake
sudo apt -y install libncurses5-dev
cmake . -DBUILD_CursesDialog=ON -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF -DCMAKE_USE_SYSTEM_CURL=ON
make -j8
make install

# cmake-gui
# Requires Qt5 installed
cmake . -DBUILD_QtDialog=ON -DQt5Core_DIR=/home/$me/Qt/5.9.6/gcc_64/lib/cmake/Qt5Core \
        -DQt5Gui_DIR=/home/$me/Qt/5.9.6/gcc_64/lib/cmake/Qt5Gui \
        -DQt5Widgets_DIR=/home/$me/Qt/5.9.6/gcc_64/lib/cmake/Qt5Widgets
make -j8
make install
