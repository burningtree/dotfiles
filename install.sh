#!/bin/sh

# install homeshick
git clone https://raw.githubusercontent.com/burningtree/dotfiles/master/install.sh | sh
chmod +x $HOME/.homesick/repos/homeshick/bin/homeshick

# install my castle
$HOME/.homesick/repos/homeshick/bin/homeshick clone https://github.com/burningtree/dotfiles

printf "Done.\n"
