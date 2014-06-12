#!/bin/sh

# install homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
chmod +x $HOME/.homesick/repos/homeshick/bin/homeshick

# install my castle
$HOME/.homesick/repos/homeshick/bin/homeshick clone https://github.com/burningtree/dotfiles

printf "Done.\n"
