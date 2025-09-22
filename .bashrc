# Completion (Arch: bash-completion)
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# Defaults
#PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"

export PATH="$PATH:/home/rosa/.local/bin"
export BROWSER='brave'
export EDITOR='nvim'
export VIMRUNTIME='/usr/share/nvim/runtime'

alias reload='source ~/.bashrc'
alias grep='grep --color=auto'
alias v='nvim'
alias la='exa -la --color=always --group-directories-first'
alias ls='exa -a --color=always --group-directories-first'
alias l='exa --color=always --group-directories-first'
alias ..='cd ..'
alias ...='cd ../../'
alias update='yay -Syu'
alias tree='exa --tree'
alias ytmp3='yt-dlp -x --continue --add-metadata --audio-format mp3 --audio-quality 0 --metadata-from-title="%(artist)s - %(title)s" --prefer-ffmpeg -o "%(title)s.%(ext)s"'
alias vencordinstaller='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias untar='tar -xvf'
alias cdprog='cd ~/Documents/Uni/Corsi/Programmazione'
cit() {
    if [ -z "$1" ]; then
        echo "Usage: cit file.c"
        return 1
    fi

    # remove .c extension if present
    local src="$1"
    local base="${src%.c}"

    gcc "$src" -o "$base" && echo "Compiled to: ./$base"
}

# If present, load extra config
if [ -f "$HOME/.bash_extra" ]; then
    . "$HOME/.bash_extra"
fi
