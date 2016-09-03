# disable welcome message
set fish_greeting ">>>" (uname -rs) "@" (hostname)

# remove useless shell process name from terminal window
function fish_title; pwd; end

# vi(m) mode? not yet
#set fish_key_bindings fish_vi_key_bindings

alias mtr="sudo mtr"
source $HOME/.homesick/repos/homeshick/homeshick.fish

setenv GOPATH $HOME/.go
set PATH $PATH /usr/local/bin /usr/local/sbin
set EDITOR vim
