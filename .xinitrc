[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xbindkeys
xrandr -r 144
xsetroot -solid "#707880"

mpd
redshift -l 47.609722:-122.333056 &
xscreensaver -display :0 -no-splash &

exec dwm 
