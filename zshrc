# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/`readlink $ZSH`/../oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew rvm bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin

# set up EDITOR
export EDITOR=vim

# If it's available, alias `vim` as `mvim -v`. This makes sure that we'll be using
# MacVim in a terminal mode if we call `vim` rather than the (old) system version. 
#
# http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
type mvim >/dev/null 2>&1 && alias vim="mvim -v"
 
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
[[ -s $HOME/.rbenv/bin ]] && eval "$(rbenv init -)"

# OS-specific stuff
case `uname` in
  Darwin)
    # irssi installed with homebrew doesn't install the perl libraries globally
    export PERL5LIB="/usr/local/Library/LinkedKegs/irssi/lib/perl5/site_perl/darwin-thread-multi-2level:$PERL5LIB"
    export PATH="$PATH:/usr/local/texlive/2011/bin/x86_64-darwin"
    alias update="sudo softwareupdate -i -a; brew update; brew upgrade; date;"
    ;;
  FreeBSD)
    alias update="sudo portsnap fetch update; sudo portmaster -Bda --no-confirm; sudo freshclam; sudo freebsd-update fetch; date;"
    ;;
esac

# irssi
alias remote-irssi="ssh -t troy dtach -A /tmp/$(whoami)-irssi.dtach -E irssi"
alias irssi-dtach="dtach -A /tmp/$(whoami)-irssi.dtach -E irssi"

# update
#alias update-ubuntu="sudo apt-get update; sudo apt-get upgrade; date;"

# serve
alias serve="twistd -n web --path ."
