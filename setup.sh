# Clean
rm -rf ~/.config/awesome
rm -rf ~/.config/bspwm
rm -rf ~/.config/hypr
rm -rf ~/.config/sxhkd
rm -rf ~/.config/polybar
rm -rf ~/.config/alacritty
rm -rf ~/.config/waybar
#rm -rf ~/.config/nvim
rm -rf ~/.config/nvim/lua/custom 
rm -rf ~/.config/rofi
rm -rf ~/.config/ranger
rm -rf ~/.config/flameshot
rm -rf ~/.config/picom.conf
rm -rf ~/.config/starship.toml
rm -rf ~/.config/redshift.conf
rm -rf ~/.gitconfig
rm -rf ~/.ngrok2
rm -rf ~/ngrok
rm -rf ~/.zshrc
rm -rf ~/.zsh_aliases
rm -rf ~/.prettierrc
rm -rf ~/.xprofile
rm -rf ~/work.sh

# Link
ln -s ~/dotfiles/.config/awesome ~/.config/awesome
ln -s ~/dotfiles/.config/bspwm ~/.config/bspwm
ln -s ~/dotfiles/.config/hypr ~/.config/hypr
ln -s ~/dotfiles/.config/sxhkd ~/.config/sxhkd
ln -s ~/dotfiles/.config/polybar ~/.config/polybar
ln -s ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/.config/waybar ~/.config/waybar
# ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/nvchad ~/.config/nvim/lua/custom
ln -s ~/dotfiles/.config/rofi ~/.config/rofi
ln -s ~/dotfiles/.config/flameshot ~/.config/flameshot
ln -s ~/dotfiles/.config/ranger ~/.config/ranger
ln -s ~/dotfiles/.config/picom.conf ~/.config/picom.conf
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/.config/redshift.conf ~/.config/redshift.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.ngrok2 ~/.ngrok2
ln -s ~/dotfiles/ngrok ~/ngrok
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.prettierrc ~/.prettierrc
ln -s ~/dotfiles/.xprofile ~/.xprofile
ln -s ~/dotfiles/work.sh ~/work.sh

sudo rm /etc/profile
sudo ln -s ~/dotfiles/profile /etc/profile

sudo chmod 774 ~/.config/bspwm/bspwmrc
sudo chmod 774 ~/.config/sxhkd/sxhkdrc
sudo chmod 774 ~/.config/polybar/launch.sh
sudo chmod 774 ~/work.sh

# Fonts
rm -rf ~/.config/fontconfig/conf.d/30-family-defaults.conf
mkdir -p ~/.config/fontconfig/conf.d/
ln -s ~/dotfiles/.config/fontconfig/conf.d/30-family-defaults.conf ~/.config/fontconfig/conf.d/30-family-defaults.conf
mkdir -p ~/.local/share/fonts
cp ./fonts/* ~/.local/share/fonts
fc-cache -f -v

# Wallpapers
rm -rf ~/wallpapers
cp ~/dotfiles/wallpapers ~/wallpapers -r

# Set linux to use local time
sudo timedatectl set-local-rtc 1
