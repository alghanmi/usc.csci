# .bashrc
# You can always get a fresh copy of this file from /usr/usc/skel/.bashrc
# /bin/cp /usr/usc/skel/.bashrc ~/
#
# .bashrc is read only by "interactive non-login shells", such as a
# graphical terminal or scp.  It is not normally read by
# "interactive login shells", such as ssh, so .bash_profile sources this file

# See "man bash" for more information
# Everything to the right of a # in a line is a comment and is not read
# Some Customizable Content has commented out choices.  You may
# remove the # marks from choices you wish to use and add them to 
# ones you do not


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

##
## IMPORTANT System Variables
##

# Useful functions
. /usr/usc/etc/bash.functions

# Default System PATH
pathappend /usr/local/bin
pathappend /usr/usc/bin
pathappend /usr/openwin/bin
pathappend /usr/ccs/bin
pathappend /usr/lsd/openssh/default/bin
pathappend /usr/bin

# Networking & Quota
pathappend /usr/sbin
pathappend /sbin

# MAN Path
pathappend /usr/openwin/man MANPATH
pathappend /usr/local/man MANPATH
pathappend /usr/usc/man MANPATH
pathappend /usr/usc/X/man MANPATH
pathappend /usr/spac/man MANPATH
pathappend /usr/man MANPATH

source_defaults;


##
## Customization
##

## Applications that are not in default path
source_if_read /usr/usc/curl/default/setup.sh
source_if_read /usr/usc/doxygen/default/setup.sh
source_if_read /usr/usc/emacs/new/setup.sh
source_if_read /usr/usc/git/default/setup.sh
source_if_read /usr/usc/jdk/1.6.0_23/setup.sh
source_if_read /usr/usc/math/default/setup.sh
source_if_read /usr/usc/matlab/2009b/setup.sh
source_if_read /usr/usc/python/new/setup.sh
source_if_read /usr/usc/qt/4.8.2/setup.sh
source_if_read /usr/usc/subversion/1.6.9/setup.sh
source_if_read /usr/usc/tex/default/setup.sh
source_if_read /usr/usc/vim/default/setup.sh
source_if_read /usr/usc/vnc/default/setup.sh



## Fix Keybindings in INPUTRC
export INPUTRC=$HOME/.inputrc

## Color Prompt with terminal title setting see "man bash" and 
##    http://en.wikipedia.org/wiki/ANSI_escape_code
##
##    Examples:
##      export PS1="\[\033]0;\h:\w\007\]\[\033[1;33;41m\]\h(\t)[\w]\[\033[0m\]"
##      export PS1="\H(\!): "
export PS1="\[\033[01;31m\]\u@\h:\[\033[01;31m\]\w >\[\033[00m\] "


# GNU (linux-like) everything
pathprepend /usr/usc/gnu/bin

# Some people don't like the /usr/ucb directory, so it goes last
pathappend /usr/ucb

# Put your current directory in your PATH
pathprepend .

# Put your home directory in your PATH
pathprepend ~

# Disable Core Dumps
ulimit -c 0

# umask to secure files upon creation
umask 077


# Bash History
export HISTSIZE=10000
shopt -s cdspell  # Correct cd command typos
shopt -s cmdhist  # Convert multi-line commands in online in bash history
shopt -s dotglob  # Expand dot files


##
## Personalizations
##

# The PAGER variable decides which program should handle multi-page output
# Choices are /usr/bin/more, /usr/bin/less, /usr/usc/bin/less, /usr/usc/less/340/bin/less
export PAGER=/usr/bin/less

# The EDITOR variable comes up when a program needs a text editor
export EDITOR="emacs -nw"
export VISUAL=$EDITOR

# Fix xterm problems
export TERM=dtterm

# Aliases
alias ls='/usr/usc/gnu/bin/ls --color=auto'
alias grep='/usr/usc/gnu/bin/grep --color=auto'
alias finger='finger -m'
alias du='du -h'
alias matlab-cli='matlab -nojvm -nosplash -nodesktop'
alias vi='vim'

# Java Setup
export CLASSPATH=.
ulimit -v 1840000

# Custom Message Of The Day
cat $HOME/.motd
