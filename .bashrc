export USER="tony"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[38;5;60m\]\u\[$(tput sgr0)\]\[\033[38;5;66m\]@\[$(tput sgr0)\]\[\033[38;5;221m\]\h\[$(tput sgr0)\]\[\033[38;5;66m\]:\w\[$(tput sgr0)\]\[\033[38;5;70m\]\$(parse_git_branch)\[$(tput sgr0)\]\[\033[38;5;66m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# CLI Color

export CLICOLOR=1

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Environment Variables

export LESS='-MeFRX'

export HISTIGNORE="historyi:h:pwd:exit:df:ls:ll"
export HISTCONTROL=ignoreboth 		#ignoredups:ignorespace
export HISTTIMEFORMAT='%b %d %I:%M %p '	#using strftime format

# GREP_COLOR codes
# Attributes: 	Text color:	Background:
#   0 reset all	  30 black	  40 black
#   1 bright	  31 red	  41 red
#   2 dim	  32 green	  42 green
#   4 underscore  33 yellow	  43 yellow
#   5 blink	  34 blue	  44 blue
#   7 reverse	  35 purple	  45 purple
#   8 hidden	  36 cyan	  46 cyan
# 		  37 white	  47 white
# Separate with ";"
#
export GREP_COLOR="34"
export GREP_OPTIONS="--color=auto"

# PATH Settings

#export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH"

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
# old path PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

#PYTHONPATH="/usr/local/Cellar/python3/3.6.2:$PYTHONPATH"
#export PYTHONPATH

. /usr/local/Cellar/z/1.9/etc/profile.d/z.sh
. /usr/local/etc/profile.d/z.sh
