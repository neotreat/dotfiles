# Neotreat's dotfiles

TBD

## Introduction

TBD


## Install

First update your system and install the XCode command line tools. They are
necessary for the Mac App Store manageement tools *mas* (**Note:** The current
version of *mas* only works with XCode 8.x and thus macOS 10.12).

```sh
sudo softwareupdate -i -a
xcode-select --install
```

Clone the dotfile repository and execute the installation script.

```sh
git clone https://github.com/neotreat/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

## Bugs

TBD

## Credit

This repository was forked from [Zach Holman](https://github.com/holman)' brilliantly
structured [dotfiles](http://github.com/holman/dotfiles). He also wrote an interesting
article [about the philosophy of dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/),
which I linked.

Furthermore I got inspired by the dotfiles of the following developers, which are also
mentioned in the respective files:

* Repo1
* Repo2
* ...

