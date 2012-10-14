# LIST
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# COLORIZED CAT
# with pygments script
alias pyg='pygmentize -O style=solarized256 -f console256'

# GIT
alias gd="git diff"
alias ga="git add"
alias gbd="git branch -D"
alias gst="git status"
alias gca="git commit -a -m"
alias gm="git merge --no-ff"
alias gph="git push"
alias gpl="git pull"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"

# ALERT NOTIFY
# ex:  sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
