echo -n "Welcome back "; whoami;
echo -n "Today is "; date "+%Y.%m.%d %H:%M:%S"
echo -n "Uptime for $(hostname -s): "; uptime | cut -d' ' -f4-7

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
