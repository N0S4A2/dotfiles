autoload -U compinit && compinit
autoload -Uz colors && colors

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/.local/bin

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

PROMPT="%{$fg[cyan]%}>%{$reset_color%} "
RPROMPT="%{$fg[green]%}%~%{$reset_color%}"

setopt autocd # change directories without having to use cd
setopt autopushd # automatically append directories to the directory stack
setopt hist_ignore_all_dups # do not append duplicate commands to the history
setopt hist_ignore_space # do not append commands prefixed with a space to the history
setopt inc_append_history # automatically append every command to the history
setopt nocheckjobs # don't warn about background processes when exiting
setopt nohup # don't kill background processes when exiting

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case-insensitive completion

bindkey ';5C' forward-word # move the cursor to the beginning of the next word with Ctrl + Right Arrow
bindkey ';5D' backward-word # move the cursor to the beginning of the previous word with Ctrl + Left Arrow

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
    livestreamer -p mpv twitch.tv/$1 best > /dev/null 2>&1 &
    exit
}
