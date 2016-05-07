set fish_greeting ""

set -Ux EDITOR vim

if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx
    end
end

function play
    youtube-dl --extract-audio --audio-quality 0 --output="/tmp/%(title)s.%(ext)s" --exec="mpv {}" --default-search=ytsearch "$argv"
end

function twitch
    livestreamer -p mpv twitch.tv/$argv best > /dev/null 2>&1
end
