# rikka

#prompt
eval "$(starship init zsh)"
#PS1="%F{yellow}λ %f%~ > "
#PS1="%F{green}%B%~/%b%f "

#default apps
export TERMINAL='kitty'
export BROWSER='firefox'
export EDITOR='nvim'

#aliases
alias reload='source ~/.zshrc' 
alias la='exa -la --color=always --group-directories-first --icons'
alias ls='exa -a --color=always --group-directories-first --icons'
alias l='exa --color=always --group-directories-first --icons'
alias ..='cd ..'
alias update='sudo pacman -Syu'
alias dsmotion='ds4drv --hidraw --udp'
alias cbonsai='cbonsai -S'
alias clock='tty-clock -c -C 6'
alias bn='$HOME/scripts/bunnyfetch'
alias open='xdg-open'
alias reca='ffmpeg -f pulse -i default -y -v error -stats '
alias tree='exa --tree --icons'
alias ytmp3='yt-dlp -x --continue --add-metadata --audio-format mp3 --audio-quality 0 --metadata-from-title="%(artist)s - %(title)s" --prefer-ffmpeg -o "%(title)s.%(ext)s"'
alias v='nvim'

# exports
export PATH="$HOME/.npm-packages/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

#bindkey
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
