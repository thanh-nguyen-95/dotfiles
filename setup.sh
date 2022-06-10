# Clean
rm -rf ~/.config/awesome
rm -rf ~/.config/bspwm
rm -rf ~/.config/sxhkd
rm -rf ~/.config/polybar
rm -rf ~/.config/alacritty
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/.config/ranger
rm -rf ~/.config/picom.conf
rm -rf ~/.config/starship.toml
rm -rf ~/.config/fontconfig/conf.d/30-family-defaults.conf
rm -rf ~/.gitconfig
rm -rf ~/.ngrok2
rm -rf ~/ngrok
rm -rf ~/.zshrc
rm -rf ~/.zsh_aliases
rm -rf ~/.prettierrc
rm -rf ~/redshift.conf
rm -rf ~/wallapers

# Link
ln -s ~/dotfiles/.config/awesome ~/.config/awesome
ln -s ~/dotfiles/.config/bspwm ~/.config/bspwm
ln -s ~/dotfiles/.config/sxhkd ~/.config/sxhkd
ln -s ~/dotfiles/.config/polybar ~/.config/polybar
ln -s ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/rofi ~/.config/rofi
ln -s ~/dotfiles/.config/ranger ~/.config/ranger
ln -s ~/dotfiles/.config/picom.conf ~/.config/picom.conf
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/.config/fontconfig/conf.d/30-family-defaults.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.ngrok2 ~/.ngrok2
ln -s ~/dotfiles/ngrok ~/ngrok
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.prettierrc ~/.prettierrc
ln -s ~/dotfiles/redshift.conf ~/redshift.conf
ln -s ~/dotfiles/wallpapers ~/wallpapers

# Fonts
mkdir -p ~/.local/share/fonts
cp ./fonts/* ~/.local/share/fonts
fc-cache -f -v
