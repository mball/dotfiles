Dotfiles
========

This project contains my personal dotfiles. I use thoughtbot/rcm to manage these configs.

One notable absense from this repository is my Vim config. That can be found in its own repo at mball/vimrc.

Installation
------------

1. Clone this repo to the desired location (e.g. ~/.dotfiles)
  1. If not cloned to ~/.dotfiles, symlink the repo to ~/.dotfiles
  2. `rcup -x README.md -x '*.template'` # Exclusions are only required the first time (before .rcrc is symlinked)
