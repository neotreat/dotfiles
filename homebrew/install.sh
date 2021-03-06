#!/bin/sh

##
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
#
# @author   René Milzarek <rene.milzarek@gmail.com>
# @ref      Zach Holman (https://github.com/holman/dotfiles)  
# @license  MIT license (https://github.com/neotreat/dotfiles/blob/master/LICENSE.md)
##

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"  < /dev/null
  fi
fi

exit 0
