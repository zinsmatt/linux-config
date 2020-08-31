sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt -y install fish

echo "Fish shell set as default"
# chsh -s `which fish`

cp -r configs/fish ~/.config/

sudo cp configs/fish_is_root_user.fish /usr/share/fish/functions

me=$(whoami)

echo -e "\n# Miniconda" >> ~/.config/fish/config.fish
echo -e "source /home/$me/miniconda3/etc/fish/conf.d/conda.fish\n" >> ~/.config/fish/config.fish

fish
# Do not minimize current path
set -U fish_prompt_pwd_dir_length 0
exit
