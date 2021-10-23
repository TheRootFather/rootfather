# RootFather

## Description

RootFather is a project made to install some packages after the installation of an arch-based linux distro.

## Current features

- AUR Helper: yay

- Fish Shell

- Packages installed: see full list [here](https://github.com/TheRootFather/rootfather/blob/main/packages)

- Custom arch repository: [rootfather-arch-repo](https://github.com/TheRootFather/rootfather-arch-repo)

- Custom configs:
  
  - neovim
  
  - gimp
  
  - alacritty
  
  - fish

- Fonts installed: SauceCodePro Nerd Font, ttf-unifont

## To-do

- custom configs for desktop enviroments / window managers:
  
  - [x] Plasma + BSPWM
  
  - [ ] Gnome
  
  - [ ] XFCE
  
  - [ ] Openbox

- Make the installatoin process easier to read (maybe with ncurses?)

- Add more packages to the rootfather-arch-repo

## Installation

Dependencies:

```bash
sudo pacman -S git make
```

**WARNING: This process will overwrite your current distribution name.**

The change is not irreversible, but we advise you to backup some files before the installation:

```bash
sudo cp /etc/lsb-release /etc/lsb-release.bak
sudo cp /etc/pacman.conf /etc/pacman.conf.bak
```

To restore the previous distribution name:

```bash
sudo cp /etc/lsb-release.bak /etc/lsb-release
sudo cp /etc/pacman.conf.bak /etc/pacman.conf
```

Now to the installation itself:

```bash
git clone https://github.com/TheRootFather/rootfather
cd rootfather
./installer.sh
```
