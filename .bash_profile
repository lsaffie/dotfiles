source $HOME/.bashrc

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
  PS1="(v) [$YEL\u@$LOCALHOST$YEL1\w$NOCOLOR]\\$ "
else
  PS1="[$YEL\u@$LOCALHOST $YEL1\w$NOCOLOR\$(__git_ps1 ' ($PUR%s$NOCOLOR)')]\\$ "
fi
