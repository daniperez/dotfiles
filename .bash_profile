
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Applications
export EDITOR=/usr/bin/vim
export ICAROOT=/home/pitu/applications/ICAClient
export TERM=xterm-256color
export JAVA_HOME=/usr/java/jdk1.6.0_18/

# RVM & Ruby
rvm --default use 1.8.7
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
