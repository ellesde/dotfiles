[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# If VirtualBox guest
lsmod | grep vboxguest
if [$? = 0]; then
    VBoxClient-all &
fi

# Colorscheme
wal -a "80" -i "wallpapers/lily-wine.png" 

[[ -f ~/.xres/rofi ]] && xrdb -merge -I$HOME ~/.xres/rofi

exec bspwm
