# ~/.zshrc

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git autojump brew tmuxinator)
source $ZSH/oh-my-zsh.sh

# dirstack
DIRSTACKSIZE=9
DIRSTACKFILE=~/.zdirs
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1] && cd $OLDPWD
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

# zman
zman() {
  PAGER="less -g -s '+/^       "$1"'" man zshall
}

# prompt
pcolor="$fg[magenta]"
#short_hostname=`hostname -s`
PROMPT="%{$pcolor%}%n%{$reset_color%}@$SHORT_HOST:%~%{$pcolor%}%#%{$reset_color%} "

# import ~/.bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc

