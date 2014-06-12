# disable welcome message
set fish_greeting ""

# remove useless shell process name from terminal window
function fish_title; pwd; end

alias mtr="sudo mtr"
source $HOME/.homesick/repos/homeshick/homeshick.fish

set PATH $PATH /usr/local/bin /usr/local/sbin
