export PATH="$HOME/.local/bin:$PATH"
export BROWSER='helium'
export EDITOR='nvim'
export VIMRUNTIME='/usr/share/nvim/runtime'

# Stop here if the shell is non-interactive
[[ $- != *i* ]] && return

# WSL only commands
if grep -qiE 'Microsoft|WSL' /proc/version; then
	# ssh-agent
	export SSH_ASKPASS_REQUIRE=never
    	_agent_env="$HOME/.ssh/agent.env"

    	if [ -f "$_agent_env" ]; then
        	source "$_agent_env" > /dev/null
    	fi

    	ssh-add -l > /dev/null 2>&1
    	if [ $? -eq 2 ]; then
        	_agent_out=$(ssh-agent -s)
        	eval "$_agent_out" > /dev/null
        	echo "$_agent_out" > "$_agent_env"
    	fi

    	unset _agent_env _agent_out
else
	# ssh-agent
	if [ -z "$SSH_AUTH_SOCK" ]; then
		eval $(ssh-agent -s)
	fi
fi

# Get OS id
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
fi

# Completion (Arch: bash-completion)
if [[ -t 0 && -t 1 && -f /usr/share/bash-completion/bash_completion ]]; then
    . /usr/share/bash-completion/bash_completion
fi

# Enable Brew if it is insalled
if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

set_win_title() {
    printf '\033]0;%s\007' \
        "${TITLE:-${USER}@${HOSTNAME%%.*}: ${PWD/$HOME/~}}"
}

# Defaults
if [ -x "$(command -v starship)" ]; then
    eval "$(starship init bash)"
    case "$TERM" in
    xterm*|rxvt*)
        starship_precmd_user_func="set_win_title"
        ;;
    *)
        ;;
    esac
else
    #PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    if [[ $EUID -eq 0 ]]; then
    	PS1='\[\e[1;37;41m\] ROOT \[\e[0m\] \[\e[1;31m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]# '
    else
    	PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
    fi
fi

export GPG_TTY=$(tty) # Import GPG Key
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
ytmp3() {
    yt-dlp -x --continue --add-metadata --embed-thumbnail \
        --audio-format mp3 --audio-quality 0 \
        --metadata-from-title='%(artist)s - %(title)s' \
        -o '%(title)s.%(ext)s' "$@"
}
alias vencordinstaller='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias untar='tar -xvf'

# If present, load extra config
if [ -f "$HOME/.bash_extra" ]; then
    . "$HOME/.bash_extra"
fi
