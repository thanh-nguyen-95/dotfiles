# INSTALL PACKAGES
# ================================
echo "Welcome to Stupid Installing Script (SIS)"

if ! command -v yay &> /dev/null
then
  echo "Cannot find command 'yay'. Exit!"
  exit
fi

echo "Has yay, start installing packages"

yay -S hyprland hyprpaper hyprpolkitagent hyprshot hyprlock hypridle swaync xdg-desktop-portal-hyprland waybar wofi zsh neofetch mpv telegram-desktop docker docker-compose fzf ripgrep starship pamixer brightnessctl noto-fonts noto-fonts-emoji noto-fonts-cjk neovim google-chrome htop fd zellij fcitx5 fcitx5-unikey fcitx5-configtool kitty

echo "Installing Fast Node Manager"

curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# Docker
# Note: must logout to take effect
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
sudo systemctl enable --now docker.socket

# CONFIG
# ================================

echo "Configuring packages"

# Clean
rm -rf ~/.config/hypr
rm -rf ~/.config/kitty
rm -rf ~/.config/waybar
rm -rf ~/.config/wofi
rm -rf ~/.config/nvim
rm -rf ~/.config/fcitx5
rm -rf ~/.config/zellij
rm -rf ~/.gitconfig
rm -rf ~/.zshrc
rm -rf ~/.zsh_aliases
rm -rf ~/dev.sh
rm -rf ~/config.sh
rm -rf ~/session.sh

# Link
ln -s ~/dotfiles/.config/hypr ~/.config/hypr
ln -s ~/dotfiles/.config/kitty ~/.config/kitty
ln -s ~/dotfiles/.config/waybar ~/.config/waybar
ln -s ~/dotfiles/.config/wofi ~/.config/wofi
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/fcitx5 ~/.config/fcitx5
ln -s ~/dotfiles/.config/zellij ~/.config/zellij
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/dev.sh ~/dev.sh
ln -s ~/dotfiles/config.sh ~/config.sh
ln -s ~/dotfiles/session.sh ~/session.sh

sudo chmod +x ~/dev.sh
sudo chmod +x ~/config.sh
sudo chmod +x ~/session.sh

# Shell
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
