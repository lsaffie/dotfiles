source $HOME/.bashrc
alias wolfman="/Users/lsaffie/Dev/wolfman/bin/wolfman"

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

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

PS1="\n$BLK1$BAR[$AQA1\u@\h${BLK1}] [$RED1\w${BLK1}]$BAR\n \$$NOCOLOR "
if [ $VIM ] ; then
  PS1="(v) [$YEL\u@$LOCALHOST$YEL1\w$NOCOLOR]\\$ "
else
  PS1="[$YEL\u@$LOCALHOST $YEL1\w$NOCOLOR\$(__git_ps1 ' ($PUR%s$NOCOLOR)')]\\$ "
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"
export PATH=$HOME/.toolbox/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home
export PATH="/usr/local/opt/mariadb@10.3/bin:$PATH"
