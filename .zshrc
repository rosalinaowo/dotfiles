# rikka

#prompt
eval "$(starship init zsh)"

#default apps
export TERMINAL='kitty'
export BROWSER='brave'
export EDITOR='nvim'

#aliases
alias wholeshot='flameshot full --path ~/Immagini/Screeshot'
alias la='exa -la --color=always --group-directories-first --icons'
alias ls='exa -a --color=always --group-directories-first --icons'
alias l='exa --color=always --group-directories-first --icons'
alias ..='cd ..'
alias whenthe='/home/rikka/whenthe'
alias update='sudo pacman -Syu'
alias dsmotion='ds4drv --hidraw --udp'
alias pipes='pipes.sh'
alias cuddle='kitty icat /home/rikka/Immagini/cuddling.jpg'
alias cbonsai='cbonsai -S'
alias clock='tty-clock -c'
alias getpath="find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c" 
alias rec='ffmpeg -f x11grab -s 1920x1080 -i :0.0+1920,0 -f pulse -i default '

fcd() {
	cd "$(find -type d | fzf)"
}

open() {
	xdg-open "$(find -type f | fzf)"
}

# exports
export PATH="/home/rikka/.local/bin:$PATH"

#bindkey
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# autostart
#wal -qni Immagini/wallpapers/sky.jpg
