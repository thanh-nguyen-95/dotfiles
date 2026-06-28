# Install packages
paru -S sunshine libva-utils

# Copy config
rm -rf ~/.config/sunshine
ln -s ~/dotfiles/.config/sunshine ~/.config/sunshine

# Setup for KMS capture
sudo cp ~/dotfiles/.config/sunshine/sunshine-setcap.hook /etc/pacman.d/hooks/sunshine-setcap.hook

# Handle desktop scalling
mkdir ~/.local/bin
sudo cp ~/dotfiles/.config/sunshine/sunshine-stream-prep ~/.local/bin/sunshine-stream-prep
sudo cp ~/dotfiles/.config/sunshine/sunshine-stream-undo ~/.local/bin/sunshine-stream-undo
sudo chmod +x ~/.local/bin/sunshine-stream-prep
sudo chmod +x ~/.local/bin/sunshine-stream-undo
