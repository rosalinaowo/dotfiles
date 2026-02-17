# Get OS id
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
fi

# Completion (Arch: bash-completion)
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# Enable Brew if it is insalled
if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Defaults
if [ -x "$(command -v starship)" ]; then
    eval "$(starship init bash)"
else
    PS1='[\u@\h \W]\$ '
fi

export PATH="$PATH:$HOME/.local/bin"
export BROWSER='helium-browser'
export EDITOR='nvim'
export VIMRUNTIME='/usr/share/nvim/runtime'

alias reload='source ~/.bashrc'
alias grep='grep --color=auto'
alias v='nvim'
# ls
if [ -x "$(command -v exa)" ]; then
    alias la='exa -la --color=always --group-directories-first'
    alias ls='exa -a --color=always --group-directories-first'
    alias l='exa --color=always --group-directories-first'
    alias tree='exa --tree'
else
    alias la='ls -la --color=always --group-directories-first'
    alias ll='ls -a --color=always --group-directories-first'
    alias l='ls --color=always --group-directories-first'
fi
alias ..='cd ..'
alias ...='cd ../../'
# update command
if [[ $ID =~ "arch" ]]; then
    if [ -x "$(command -v yay)" ]; then
        alias update='yay -Syu'
    else
        alias update='sudo pacman -Syu'
    fi
elif [[ $ID =~ "debian" ]]; then
    alias update='sudo apt update && sudo apt upgrade'
fi
alias ytmp3='yt-dlp -x --continue --add-metadata --embed-thumbnail --audio-format mp3 --audio-quality 0 --metadata-from-title="%(artist)s - %(title)s" -o "%(title)s.%(ext)s"'
alias vencordinstaller='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias untar='tar -xvf'

# If present, load extra config
if [ -f "$HOME/.bash_extra" ]; then
    . "$HOME/.bash_extra"
fi
