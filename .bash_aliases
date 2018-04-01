# general cross platform bash aliases

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
alias sudo='sudo '

# aliases for cd
alias up='cd ..'
# test alias dc='cd ~/Documents'
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/programs"

# git aliases [expiramental]
# alias gitc='git commit -am' 

# test this one
alias ip='ifconfig | grep inet  | grep -v 127.0.0.1'

# these are Darwin aliases
if [ "$(uname)" == "Darwin" ]; then
  
  # to open things 
  alias timer="open /Applications/Timer.app"
  alias dog="open ~/Pictures/dogs/*"
  alias browser="open /Applications/qutebrowser.app"
  alias htop='sudo htop'
  alias firefox="open -a ~/Applications/Firefox.app" # source: github.com/webpro/dotfiles
  
  # for command abreviations
  alias cpwd="pwd|tr -d '\n'|pbcopy"
  alias cask="brew cask" # source: webpro/dotfiles
  alias zip="zip -x *.DS_Store -x *__MACOSX* -x *.AppleDouble*" # source: github.com/webpro/dotfiles
  
  # to perform tasks
  alias flushdns="dscacheutil -flushcache && killall -HUP mDNSResponder" # source: github.com/webpro/dotfiles
  alias afk="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine" # source: github.com/webpro/dotfiles
  alias desktopshow="defaults write com.apple.finder CreateDesktop -bool true && killfinder" # source: github.com/webpro/dotfiles
  alias desktophide="defaults write com.apple.finder CreateDesktop -bool false && killfinder" # source: github.com/webpro/dotfiles
  alias cleanupds="find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;" # source: github.com/webpro/dotfiles
  alias cleanupad="find . -type d -name '.AppleD*' -ls -exec /bin/rm -r {} \;" # source: github.com/webpro/dotfiles
fi
  
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  alias lastbegeo="sudo lastb | head -n -2 | cut -c 23-38 | xargs -n1 geoiplookup | cut -c 24- | sort | uniq -c | sort -nr"
fi
