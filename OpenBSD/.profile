# $OpenBSD: dot.profile,v 1.5 2018/02/02 02:29:54 yasuoka Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
PKG_PATH="https://ftp.openbsd.org/pub/OpenBSD/$(uname -r)/packages/$(uname -m)/"
PS1='[\033[32m$LOGNAME\033[00m@\033[33m$(hostname -s)\033[00m $(pwd | sed "s,^$HOME,~,")]\033[32m$\033[00m '
HISTFILE=~/.ksh_history

export PATH HOME TERM PKG_PATH PS1 HISTFILE

alias netstat='doas netstat -anf inet'
alias sudo='doas'
alias pfrules='doas pfctl -vvs rules | fgrep "@" '
alias pfrules_detail='doas pfctl -vvsr'
alias pflog='doas tcpdump -netttvi pflog0'
alias pflog_read='doas tcpdump -netttvr /var/log/pflog'
alias reloadpf='doas pfctl -F all -f /etc/pf.conf' 
alias syslog='doas cat /var/log/messages'
