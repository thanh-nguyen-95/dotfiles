# INSTALL PACKAGES
# ================================
echo "Welcome to Stupid Installing Script (SIS)"

if ! command -v paru &>/dev/null; then
  echo "Cannot find command 'paru'. Exit!"
  exit
fi

echo "Has yay, start installing packages"

paru -S docker docker-compose fzf ripgrep neovim fd zellij ibus-bamboo ttf-font-awesome ttf-jetbrains-mono-nerd wl-clipboard helium-browser-bin

echo "Installing Fast Node Manager"

curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

echo "Installing Bun"
curl -fsSL https://bun.sh/install | bash

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
rm -rf ~/.config/fish
rm -rf ~/.config/zellij
rm -rf ~/.config/nvim
rm -rf ~/.gitconfig
rm -rf ~/dev.sh
rm -rf ~/config.sh

# Link
ln -s ~/dotfiles/.config/fish ~/.config/fish
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/zellij ~/.config/zellij
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/dev.sh ~/dev.sh
ln -s ~/dotfiles/config.sh ~/config.sh

sudo chmod +x ~/dev.sh
sudo chmod +x ~/config.sh

# Workspaces
mkdir -p ~/projects
mkdir -p ~/researches
