[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xrandr -r 144
xbindkeys
exec i3 
