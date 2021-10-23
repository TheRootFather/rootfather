#!/usr/bin/sh

# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay/

# repo
sudo sh -c "cat repo.txt >> /etc/pacman.conf"

# packages
sudo pacman -Syyu --noconfirm

yay -S --needed - < packages --noconfirm

chsh -s /usr/bin/fish

# fonts
mkdir font/ && cd font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
unzip *.zip
rm *.zip
sudo cp * /usr/share/fonts/
fc-cache -f -v

cd ..

# distro name
sudo cp lsb-release /etc/lsb-release

# WalkingGarbage's dotfiles
git clone https://github.com/WalkingGarbage/dotfiles
cd dotfiles
cp -r alacritty/ ~/.config/
cp -r bspwm/ ~/.config/
cp -r fish/ ~/.config/
cp -r nvim/ ~/.config/

chmod +x mon
chmod +x kittyfetch
sudo cp mon /usr/bin/
sudo cp kittyfetch /usr/bin/

cd ..

# gimpshop-reloaded
git clone git://github.com/WalkingGarbage/gimpshop-reloaded
rm gimpshop-reloaded/gimprc
mkdir ~/.config/GIMP/
mkdir ~/.config/GIMP/2.10/
cp -r gimpshop-reloaded/* ~/.config/GIMP/2.10/
rm -rf gimpshop-reloaded

# wallpapers
git clone https://github.com/TheRootFather/wallpapers
mv wallpapers/*.jpg ~/Pictures/
rm -rf wallpapers/

# ohmyfish
curl -L https://get.oh-my.fish | fish
