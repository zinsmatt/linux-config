cur_dir=$(pwd)

cd ~/Downloads
wget http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run

chmod +x qt-unified-linux-x64-online.run
echo "Install the version wanted"
echo "Note that only gcc_64 is really needed"
./qt-unified-linux-x64-online.run

# Add to .bashrc
echo "Which version did you install? "
read qt_version
echo -e "\n# Qt 5" >> ~/.bashrc
echo -e 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/matthieu/Qt/'"${qt_version}"'/gcc_64/lib\n' >> ~/.bashrc
source  ~/.bashrc

scd $cur_dir
