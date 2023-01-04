# INSTALL PACKAGES
# ================================
echo "Welcome to Stupid Installing Script (SIS)"

if ! command -v yay &> /dev/null
then
  echo "Cannot find command 'yay'. Exit!"
  exit
fi

echo "Has yay, start installing packages"

yay -S bspwm sxhkd polybar rofi alacritty xclip flameshot zsh neofetch mpv telegram-desktop ibus-bamboo docker docker-compose python-pywal fzf ripgrep postman-bin starship ranger pamixer brightnessctl noto-fonts noto-fonts-emoji noto-fonts-cjk feh dunst code neovim google-chrome cloudflare-warp-bin

echo "Installing Fast Node Manager"

curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# Docker
# Note: must logout to take effect
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
sudo systemctl enable --now docker.socket
sudo systemctl enable --now warp-svc.service

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
rm -rf ~/.xprofile
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
ln -s ~/dotfiles/.xprofile ~/.xprofile
ln -s ~/dotfiles/work.sh ~/work.sh
ln -s ~/dotfiles/config.sh ~/config.sh

sudo rm /etc/profile
sudo ln -s ~/dotfiles/profile /etc/profile

sudo chmod +x ~/.config/bspwm/bspwmrc
sudo chmod +x ~/.config/sxhkd/sxhkdrc
sudo chmod +x ~/.config/polybar/launch.sh
sudo chmod +x ~/work.sh
sudo chmod +x ~/config.sh

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
