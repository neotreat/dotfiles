# Neotreat's dotfiles

TBD

## Introduction

TBD


## Install

Run this:

```sh
git clone https://github.com/neotreat/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

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

