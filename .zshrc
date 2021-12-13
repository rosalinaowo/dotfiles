# rikka

# export EDITOR=nvim

#prompt
eval "$(starship init zsh)"

#aliases
alias wholeshot='flameshot full --path ~/Immagini/Screeshot'
alias ls='exa'
alias ll='exa -la'
alias ..='cd ..'
alias whenthe='/home/rikka/whenthe'
alias update='sudo pacman -Syyu'

#bindkey
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
