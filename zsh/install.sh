#!/bin/sh
#
# Oh My Zsh
#
# This installs the oh-my-zsh extension from github.


#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Check if there already is a oh-my-zsh folder
if [ ! -d "./oh-my-zsh" ];
then
  echo "  Installing oh-my-zsh for you."
  
  # Install oh-my-zsh
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  chsh -s /bin/zsh

  # Install the powerline fonts
  cd $TMPDIR
  git clone https://github.com/powerline/fonts.git
  cd fonts
  sh ./install.sh
  cd ..
  rm -rf fonts
fi