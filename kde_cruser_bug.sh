#!/bin/bash

# Get the name of the current desktop
current_desktop=$(echo $XDG_CURRENT_DESKTOP)

echo "choose your desktop name:"
echo "1. Xfce"
echo "2. Gnome"
echo "3. Lxqt"
echo "4. Hyperland"
echo "5. Lxde"
echo "6. Cinnamon"
echo "7. Was your desired desktop not among these?"

read -p "enter your Selection: " choice

# Execute the appropriate command
case $choice in
1)
    # Xfce
    sudo systemctl set-default xfce
    ;;
2)
    # Gnome
    sudo systemctl set-default gnome
    ;;
3)
    # Lxqt
    sudo systemctl set-default lxqt
    ;;
4)
    # Hyperland
    sudo systemctl set-default hyperland
    ;;
5)
    # Lxde
    sudo systemctl set-default lxde
    ;;
6)
    # Cinnamon
    sudo systemctl set-default cinnamon
    ;;
7)
    # Enter the name of the new desktop
    echo "Enter the name of the new desktop "
    read -p "New desktop name: " desktop
    sudo systemctl set-default $desktop
    ;;
esac
