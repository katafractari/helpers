#!/bin/sh

HOMESHICK_BIN=.homesick/repos/homeshick/bin/homeshick
MR_BIN=.myrepos/mr

# Do some cleanup
rm .bash* 2> /dev/null

# Install required packages
if [[ -f /etc/arch-release && -f /usr/bin/yaourt ]]; then
    yaourt -S zsh tmux vim-runtime powerline powerline-fonts ruby
fi

cd

# Oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
rm .zshrc

# Homesick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

# SPF13 Vim
curl http://j.mp/spf13-vim3 -L -o - | sh
rm .vimrc.local 2> /dev/null

# MyRepos and Homesick castles
mkdir -p .myrepos
git clone https://git.joeyh.name/git/myrepos.git/ /tmp/myrepos
cp /tmp/myrepos/mr .myrepos/mr
chmod +x .myrepos/mr

curl -L https://raw.githubusercontent.com/katafractari/vcs/master/home/.mrconfig > .mrconfig
$MR_BIN checkout
rm .mrconfig
$HOMESHICK_BIN link vcs
$HOMESHICK_BIN link vim
$HOMESHICK_BIN link shell

