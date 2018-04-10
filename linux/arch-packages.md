# Arch Linux Packages
## Personal Arch Linux packages post-installation

### ZSH-fun-having
Install

`# su pacman -S zsh`

Change Default shell

`# chsh -s /usr/bin/zsh`

### Text Editors, Git, and monitoring
`# su pacman -S xterm git vim neovim htop`

### AUR stuffs
Automake suite

`# su pacman -S base-devel`

`# su pacman -Syyy`

`# su pacman -S yaourt`

### Graphical Environment
`# su pacman -S xorg-server`

Install video driver
If in VirtualBox:

`# su pacman -S virtualbox-guest-utils virtualbox-guest-modules-arch mesa`

To find hardware spec run:

`# lspci`

### Desktop
`# su pacman -S i3`

### Login
`# su pacman -S lightdm`

`# yaourt lightdm-slick-greeter`

`# su systemctl enable lightdm`
