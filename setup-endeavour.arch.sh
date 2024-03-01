# INSTALL PACKAGES
# ================================
echo "Welcome to Stupid Installing Script (SIS)"

if ! command -v yay &> /dev/null
then
  echo "Cannot find command 'yay'. Exit!"
  exit
fi

echo "Has yay, start installing packages"

yay -S bspwm sxhkd polybar rofi alacritty xclip flameshot zsh neofetch mpv telegram-desktop ibus-bamboo docker docker-compose python-pywal fzf ripgrep postman-bin starship ranger pamixer brightnessctl noto-fonts noto-fonts-emoji noto-fonts-cjk feh dunst neovim google-chrome cloudflare-warp-bin htop fd ueberzug tmux

echo "Installing Fast Node Manager"

curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# Docker
# Note: must logout to take effect
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
sudo systemctl enable --now docker.socket

# Cloudflare VPN
sudo systemctl enable --now warp-svc.service

# CONFIG
# ================================

echo "Configuring packages"

# Clean
rm -rf ~/.config/bspwm
rm -rf ~/.config/alacritty
rm -rf ~/.config/sxhkd
rm -rf ~/.config/polybar
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/.config/ranger
rm -rf ~/.config/flameshot
rm -rf ~/.config/tmux
rm -rf ~/.config/mimeapps.list
rm -rf ~/.gitconfig
rm -rf ~/.zshrc
rm -rf ~/.zsh_aliases
rm -rf ~/.ngrok2
rm -rf ~/ngrok
rm -rf ~/.prettierrc
rm -rf ~/dev.sh
rm -rf ~/config.sh

# Link
ln -s ~/dotfiles/.config/bspwm ~/.config/bspwm
ln -s ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/.config/sxhkd ~/.config/sxhkd
ln -s ~/dotfiles/.config/polybar ~/.config/polybar
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/rofi ~/.config/rofi
ln -s ~/dotfiles/.config/ranger ~/.config/ranger
ln -s ~/dotfiles/.config/flameshot ~/.config/flameshot
ln -s ~/dotfiles/.config/tmux ~/.config/tmux
ln -s ~/dotfiles/.config/mimeapps.list ~/.config/mimeapps.list
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.ngrok2 ~/.ngrok2
ln -s ~/dotfiles/ngrok ~/ngrok
ln -s ~/dotfiles/.prettierrc ~/.prettierrc
ln -s ~/dotfiles/dev.sh ~/dev.sh
ln -s ~/dotfiles/config.sh ~/config.sh

sudo ln -s ~/dotfiles/icons/Arc /usr/share/icons/Arc

sudo rm /etc/profile
sudo ln -s ~/dotfiles/profile /etc/profile

sudo rm /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
sudo ln -s ~/dotfiles/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/50-mouse-acceleration.conf

sudo chmod +x ~/.config/bspwm/bspwmrc
sudo chmod +x ~/.config/sxhkd/sxhkdrc
sudo chmod +x ~/.config/polybar/launch.sh
sudo chmod +x ~/dev.sh
sudo chmod +x ~/config.sh
sudo chmod +x ~/dotfiles/pocketbase

# Shell
# sudo chsh -s /bin/bash
# sudo chsh -s /bin/bash $USER
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

# Wallpapers
wal -i ~/dotfiles/wallpapers/cats-pixel-art.png
