CYAN='\033[0;36m'
BOLD=$(tput bold)

gnome-extensions disable ubuntu-dock@ubuntu.com
echo -e "${CYAN}${BOLD}\nInstalling git make python3 npm curl vim vim-gtk xclip default-jre default-jdk\n"
sudo apt update
sudo apt install git make python3 npm curl vim vim-gtk xclip default-jre default-jdk build-essential cmake vim-nox python3-dev mono-complete golang nodejs

echo "${CYAN}${BOLD}\nInstalling node version manager\n"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.bashrc

echo "${CYAN}${BOLD}\nInstalling cargo\n"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "${CYAN}${BOLD}\nInstalling neovim\n"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo chmod u+x nvim.appimage
#./nvim.appimage

# if the command ./nvim.appimage fails, try:
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
echo 'export PATH="~/squashfs-root/usr/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

echo "${CYAN}${BOLD}\nInstalling lunarvim\n"
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
echo 'export PATH="~/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

curl -O https://raw.githubusercontent.com/ap3120/config/master/config.lua
mv ~/config.lua ~/.config/lvim/

git clone https://github.com/ronniedroid/getnf.git
cd getnf
./install.sh
getnf

#mkdir ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/color ~/.vim/plugged ~./bundle
#cd ~/.vim/autoload/
#curl -O https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#cd ~/
#curl -O https://raw.githubusercontent.com/ap3120/config/master/.vimrc
#cd ~/.vim/bundle/
#git clone https://github.com/gmarik/Vundle.vim.git
#git clone https://github.com/ycm-core/YouCompleteMe
#sudo mkdir -p /etc/apt/keyrings
#curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
#echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_current.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
#cd ~/.vim/bundle/YouCompleteMe
#python3 install.py --all

echo "${CYAN}${BOLD}\nInstalling maven\n"
wget -c https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
tar -xvf apache-maven-3.9.6-bin.tar.gz
echo 'JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"' >> ~/.bashrc # to fix, may not be java-17
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="/opt/apache-maven-3.9.6/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Cloning config repo from github
git clone https://github.com/ap3120/config.git
mv ~/config/ ~/Documents

echo "${CYAN}${BOLD}\nYou may need to restart your terminal"
