# WARNGING: This is not an actual install script!!
# This is just me saving commands to in linear fashion should I need to reinstall

# to see disk
fdisk -l

# go to fdisk tool to format and partition drive
fdisk /dev/sda

# Command (m for help): o

# Command (m for help): n
# Partition number (1-4, default 1):
# First sector ():
# Last sector (): +3G
# Command (m for help): a


# Command (m for help): n
# Partition number (1-4, default 2):
# First sector ():
# Last sector (): +2G
# Command (m for help): type
# Partition number (1,2, default 2):
# Partition type (type L to list all types): 82


# Command (m for help): n
# Partition number (1-4, default 2):
# First sector ():
# Last sector ():

# Command (m for help): w

# verify partitions
fdisk -l


mkfs.ext4 /dev/sda1

mkfs.ext4 /dev/sda3


# verify internet connection (it's recommended to install with wired connection)
ping -c 5 archlinux.org


mount /dev/sda1 /mnt
mkdir /mnt/home

mount /dev/sda3 /mnt/home

# verify mounted partitions
mount


# install base packages for arch (install ALL THE THINGS)
pacstrap -i /mnt base


# generate fstab
genfstab -U -p /mnt >> /mnt/etc/fstab

# go into installation
arch-chroot /mnt


# install some packages through pacman
pacman -S openssh grub-bios linux-headers linux-lts linux-lts-headers wpa_supplicant wireless_tools

# set keyboard
vi /etc/locale.gen
# uncomment "en_US.UTF-8 UTF-8

locale-gen

# set clock
ln -s /usr/share/zoneinfo/America/Chicago /etc/localtime
hwclock --systohc --utc
systemctl enable sshd.service

# set password
passwd


grub-install --target=i386-pc --recheck /dev/sda

cp /usr/share/locale/en\@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo

grub-mkconfig -o /boot/grub/grub.cfg

# go back to USB/ISO
exit

# unmount
umount /mnt/home
umount /mnt

# MOMENT OF TRUTH DAWWWWWWWG
reboot
