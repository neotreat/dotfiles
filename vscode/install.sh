#!/bin/sh

##
# Visual Studio Code
#
# Symlink the settings file and install all extensions.
#
# @author   René Milzarek <rene.milzarek@gmail.com>
# @license  MIT license (https://github.com/neotreat/dotfiles/blob/master/LICENSE.md)
##

set -e

# Root directory of the dotfiles
cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

# Check if there is no symlink for the settings.json file
if [[ ! -L $HOME/Library/Application\ Support/Code/User/settings.json ]]
then

    # Check if there is a regular file for the settings.json file and create a
    # backup of the existing one
    if [[ -f $HOME/Library/Application\ Support/Code/User/settings.json ]]
    then
        mv $HOME/Library/Application\ Support/Code/User/settings.json \
            $HOME/Library/Application\ Support/Code/User/settings.json.backup
    fi

    # Create a symbolic link to the settings.json file
    ln -s $DOTFILES_ROOT/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
    echo "Created symbolic link to settings.json"
else
    echo "Symbolic link to settings.json was already present"
fi

# Installing extensions
while read line; do
  code --install-extension $line
done < $DOTFILES_ROOT/vscode/extensions
