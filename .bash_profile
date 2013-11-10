#this if below, makes sures the path includes the rbenv env only once.
#https://github.com/sstephenson/rbenv/issues/369
if [ -x /usr/libexec/path_helper ]; then
  PATH=""
  eval `/usr/libexec/path_helper -s`
fi
#############

export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
source ~/.profile


#export PATH=/Users/lsaffie/bin/Sencha/Cmd/3.0.2.288:$PATH

#export SENCHA_CMD_3_0_0="/Users/lsaffie/bin/Sencha/Cmd/3.1.1.274"

#export PATH=/Users/lsaffie/bin/Sencha/Cmd/3.1.1.274:$PATH

# Pimp out my prompt
NOCOLOR="\[\033[0m\]"
LOCALHOST="localhost"
BAR="----"
BLK="\[\033[0;30m\]"  ;  BLK1="\[\033[1;30m\]"  #dark grey
RED="\[\033[0;31m\]"  ;  RED1="\[\033[1;31m\]"
GRN="\[\033[0;32m\]"  ;  GRN1="\[\033[1;32m\]"
YEL="\[\033[0;33m\]"  ;  YEL1="\[\033[1;33m\]"
BLU="\[\033[0;34m\]"  ;  BLU1="\[\033[1;34m\]"
PUR="\[\033[0;35m\]"  ;  PUR1="\[\033[1;35m\]"
AQA="\[\033[0;36m\]"  ;  AQA1="\[\033[1;36m\]"
GRY="\[\033[0;37m\]"  ;  GRY1="\[\033[1;37m\]"  #white
WHT="\[\033[0;38m\]"  ;  WHT1="\[\033[1;38m\]"  #white

PS1="\n$BLK1$BAR[$AQA1\u@\h${BLK1}] [$RED1\w${BLK1}]$BAR\n \$$NOCOLOR "
if [ $VIM ] ; then
  #PS1="(v) [$BLU\u@\h $BLU1\w$NOCOLOR]\\$ "
  PS1="(v) [$BLU\u@$LOCALHOST$BLU1\w$NOCOLOR]\\$ "
else
  PS1="[$BLU\u@$LOCALHOST $BLU1\w$NOCOLOR\$(__git_ps1 ' ($PUR%s$NOCOLOR)')]\\$ "
fi
