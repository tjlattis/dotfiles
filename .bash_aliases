# general cross platform bash aliases
alias up='cd ..'
alias h='history'
alias get='curl -OL'
alias g='grep -i'
alias lr='ls -hartl'                        
alias ll='ls -lahG'
alias la='ls -a'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'

# git aliases [expiramental]
# alias gitc='git commit -am' 

# test this one
alias ip='ifconfig | grep inet  | grep -v 127.0.0.1'

if [ "$(uname)" == "Darwin" ]; then
  # these are Darwin aliases
  alias timer="open /Applications/Timer.app"
  alias dog="open ~/Pictures/dogs/*"
  alias browser="open /Applications/qutebrowser.app"
  alias htop='sudo htop'
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # puts Linux specific aliases
fi
