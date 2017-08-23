[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# If VirtualBox guest
lsmod | grep vboxguest
if [$? = 0]; then
    VBoxClient-all &
fi

sxhkd &
exec bspwm
