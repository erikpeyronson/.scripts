# Script used by .xinitrc to generate i3 config before executing i3 

#!/bin/bash

DIR=$HOME/.dotfiles/.config/i3     # directory containing templates
FILES="config.base config.desktop" # list of templates

# remove old configuration file
rm $HOME/.config/i3/config

# concatenate templates to i3 configuration file
for file in $FILES; do
    cat $DIR/$file >> $HOME/.config/i3/config
done
