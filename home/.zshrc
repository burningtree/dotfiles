# completion 
autoload -Uz compinit
compinit

zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# history
HISTSIZE=2000
HISTFILE="$HOME/.zhistory"
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

# colors
autoload -U colors && colors

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
short_hostname=`hostname -s`
PROMPT="%{$pcolor%}%n%{$reset_color%}@$short_hostname:%~%{$pcolor%}%#%{$reset_color%} "

# import ~/.bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc

