# Script used by .xinitrc to generate i3 config before starting i3 

#!/bin/bash

cat $HOME/.dotfiles/.config/i3/config.base \
    $HOME/.dotfiles/.config/i3/config.laptop > $HOME/.config/i3/config
