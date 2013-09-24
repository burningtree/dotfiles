#!/bin/sh
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
chmod +x $HOME/.homesick/repos/homeshick
$HOME/.homesick/repos/homeshick/bin/homeshick clone https://github.com/burningtree/dotfiles
