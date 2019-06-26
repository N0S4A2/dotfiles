autoload -U compinit && compinit
autoload -Uz colors && colors

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/.local/bin
export EDITOR=vim

alias dmenu="dmenu -fn 'xos4 Terminus-8' -nb '#0c0c0c' -sb '#5f5a60' -i"
alias ls='exa -l'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

PROMPT="%{$fg[cyan]%}>%{$reset_color%} "
#RPROMPT="%{$fg[green]%}%~%{$reset_color%}"

setopt autocd # change directories without having to use cd
setopt autopushd # automatically append directories to the directory stack
setopt hist_ignore_all_dups # do not append duplicate commands to the history
setopt hist_ignore_space # do not append commands prefixed with a space to the history
setopt inc_append_history # automatically append every command to the history
setopt nocheckjobs # don't warn about background processes when exiting
setopt nohup # don't kill background processes when exiting

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case-insensitive completion

bindkey ';5C' forward-word # move the cursor to the beginning of the next word with Ctrl + Right Arrow
bindkey ';5D' backward-word # move the cursor to the beginning of the previous word with Ctrl + Left Arrow
bindkey "^[[H" beginning-of-line # move the cusor to the beginning of the line with Home
bindkey "^[[F" end-of-line # move the cursor to the end of the line with End
#bindkey "^[[A" up-line-or-search # search for previous history entry with Up Arrow
#bindkey "^[[B" down-line-or-search # search for next history entry with Down Arrow
bindkey "^[[A" history-substring-search-up # search for previous history entry with Up Arrow
bindkey "^[[B" history-substring-search-down # search for next history entry with Down Arrow
bindkey '^R' history-incremental-search-backward

# Use dmenu to search for an album to add to the mpd queue and play
mpdmenu() {
    mpc clear
    mpc list artist | dmenu | xargs -d '\n' mpc list album artist | dmenu | xargs -d '\n' mpc find album | mpc add
    mpc play >/dev/null 2>&1
}

play() {
    mpv ytdl://ytsearch:"$@" --load-unsafe-playlists &
    exit
}

random_artist() {
    find /media/music -maxdepth 1 -type d | sort --random-sort | head -n 1 | sed 's/.*\///g'
}

song() {
    ncmpcpp --current-song='%a - %t' 2> /dev/null && echo
}

stream() {
    INPUT_RES="1920x1200"
    OUTPUT_RES="1280x800"
    FPS="15"
    GOP="30"
    GOPMIN="15"
    THREADS="2"
    CBR="1000k"
    QUALITY="ultrafast"
    AUDIO_RATE="44100"
    STREAM_KEY=$(pass Twitch | awk '/stream_key/ {print $2}')
    SERVER="live-sea"

    ffmpeg \
        -f x11grab -s $INPUT_RES -r $FPS -i :0.0+1920,0 \
        -thread_queue_size 512 -f alsa -i pulse -ac 2 -ar $AUDIO_RATE -acodec libmp3lame -ab 128k -af "volume=5.0" \
        -vcodec libx264 \
        -g $GOP -keyint_min $GOPMIN -b:v $CBR -minrate $CBR -maxrate $CBR -pix_fmt yuv420p\
    	-s $OUTPUT_RES -preset $QUALITY -tune film -threads $THREADS -strict normal \
       	-bufsize $CBR \
        -f flv "rtmp://$SERVER.twitch.tv/app/$STREAM_KEY"
}

twitch() {
    streamlink -p mpv twitch.tv/$1 best > /dev/null 2>&1 &
    exit
}

weather() {
    curl -s -A "Mozilla/5.0 (X11; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0" http://thefuckingweather.com/Where/98122 | \
        grep 'remark ' | \
        sed 's/\(.*<.*">\|<\/.*>\)//g'
}
