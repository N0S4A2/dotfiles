[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xrandr -r 144
exec i3 
