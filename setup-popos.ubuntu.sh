# INSTALL PACKAGES
# ================================
echo "Welcome to Stupid Installing Script (SIS)"

sudo apt install bspwm sxhkd polybar rofi alacritty xclip flameshot zsh neofetch mpv libreoffice telegram-desktop ibus-unikey docker docker-compose python3 python3-pip fzf ripgrep ranger brightnessctl fonts-noto* feh dunst code google-chrome-stable

echo "Installing Starship Prompt"

curl -sS https://starship.rs/install.sh | sh

echo "Installing Fast Node Manager"

curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# Pywal
echo "Installing Pywal"
sudo pip3 install pywal

echo "Installing Neovim from source"

# Build neovim from source
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen

git clone https://github.com/neovim/neovim ~/neovim
cd ~/neovim
git checkout stable

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Docker
# Note: must logout to take effect
sudo groupadd docker
sudo usermod -aG docker $USER

# CONFIG
# ================================

echo "Configuring packages"

# Clean
rm -rf ~/.config/awesome
rm -rf ~/.config/bspwm
rm -rf ~/.config/sxhkd
rm -rf ~/.config/polybar
rm -rf ~/.config/alacritty
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/.config/flameshot
rm -rf ~/.config/picom.conf
rm -rf ~/.config/redshift.conf
rm -rf ~/.config/mimeapps.list
rm -rf ~/.gitconfig
rm -rf ~/.ngrok2
rm -rf ~/ngrok
rm -rf ~/.zshrc
rm -rf ~/.zsh_aliases
rm -rf ~/.prettierrc
rm -rf ~/work.sh
rm -rf ~/config.sh

# Link
ln -s ~/dotfiles/.config/awesome ~/.config/awesome
ln -s ~/dotfiles/.config/bspwm ~/.config/bspwm
ln -s ~/dotfiles/.config/sxhkd ~/.config/sxhkd
ln -s ~/dotfiles/.config/polybar ~/.config/polybar
ln -s ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/rofi ~/.config/rofi
ln -s ~/dotfiles/.config/flameshot ~/.config/flameshot
ln -s ~/dotfiles/.config/picom.conf ~/.config/picom.conf
ln -s ~/dotfiles/.config/redshift.conf ~/.config/redshift.conf
ln -s ~/dotfiles/.config/mimeapps.list ~/.config/mimeapps.list
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.ngrok2 ~/.ngrok2
ln -s ~/dotfiles/ngrok ~/ngrok
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.prettierrc ~/.prettierrc
ln -s ~/dotfiles/work.sh ~/work.sh
ln -s ~/dotfiles/config.sh ~/config.sh

sudo rm /etc/profile
sudo ln -s ~/dotfiles/profile /etc/profile

sudo chmod +x ~/.config/bspwm/bspwmrc
sudo chmod +x ~/.config/sxhkd/sxhkdrc
sudo chmod +x ~/.config/polybar/launch.sh
sudo chmod +x ~/work.sh
sudo chmod +x ~/config.sh

sudo usermod -aG video $USER

# Shells
sudo chsh -s /bin/zsh
sudo chsh -s /bin/zsh $USER

# Fonts
rm -rf ~/.config/fontconfig/conf.d/30-family-defaults.conf
mkdir -p ~/.config/fontconfig/conf.d/
ln -s ~/dotfiles/.config/fontconfig/conf.d/30-family-defaults.conf ~/.config/fontconfig/conf.d/30-family-defaults.conf
mkdir -p ~/.local/share/fonts
cp ./fonts/* ~/.local/share/fonts
fc-cache -f -v

# Workspaces
mkdir -p ~/projects
mkdir -p ~/researches

# Mouse
sh ~/dotfiles/touchpad-setup.sh

# Wallpapers
wal -i ~/dotfiles/wallpapers/10.jpg

