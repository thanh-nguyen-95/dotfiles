# INSTALL PACKAGES
# ================================
echo "Welcome to Stupid Installing Script (SIS)"

if ! command -v yay &> /dev/null
then
  echo "Cannot find command 'yay'. Exit!"
  exit
fi

echo "Has yay, start installing packages"

yay -S zsh neofetch mpv docker docker-compose fzf ripgrep starship neovim google-chrome htop fd zellij fcitx5 fcitx5-unikey fcitx5-configtool ghostty ttf-font-awesome brave-bin

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
rm -rf ~/.config/ghostty
rm -rf ~/.config/nvim
rm -rf ~/.config/fcitx5
rm -rf ~/.config/zellij
rm -rf ~/.config/neofetch
rm -rf ~/.gitconfig
rm -rf ~/.zshrc
rm -rf ~/.zsh_aliases
rm -rf ~/dev.sh
rm -rf ~/config.sh

# Link
ln -s ~/dotfiles/.config/ghostty ~/.config/ghostty
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/fcitx5 ~/.config/fcitx5
ln -s ~/dotfiles/.config/zellij ~/.config/zellij
ln -s ~/dotfiles/.config/neofetch ~/.config/neofetch
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/dev.sh ~/dev.sh
ln -s ~/dotfiles/config.sh ~/config.sh

sudo chmod +x ~/dev.sh
sudo chmod +x ~/config.sh

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
