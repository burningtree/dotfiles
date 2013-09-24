#!/bin/sh

# install homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
chmod +x $HOME/.homesick/repos/homeshick/bin/homeshick.csh
printf '\nalias homeshick source "$HOME/.homesick/repos/homeshick/bin/homeshick.csh"' >> $HOME/.cshrc

# install my castle
$HOME/.homesick/repos/homeshick/bin/homeshick clone https://github.com/burningtree/dotfiles
