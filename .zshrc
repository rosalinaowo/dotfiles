# rikka

#prompt
eval "$(starship init zsh)"

#aliases
alias wholeshot='flameshot full --path ~/Immagini/Screeshot'
alias ls='exa -la'
alias whenthe='/home/rikka/whenthe'

#bindkey
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000