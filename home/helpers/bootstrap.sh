#!/bin/sh

if [ -f /etc/arch-releasea ]; then
    sudo pacman -S tmux vim-runtime gvim-python3 python-powerline-git
fi

cd

# Oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Homesick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

# SPF13 Vim
curl http://j.mp/spf13-vim3 -L -o - | sh

# Helper scripts
git clone git@github.com:katafractari/helpers.git

# MyRepos
mkdir .myrepos
curl -L https://raw.github.com/joeyh/myrepos/master/mr > .myrepos/mr
chmod +x .myrepos/mr

# Homesick castles
homeshick clone git://github.com/katafractari/vcs.git
homeshick link vcs

homeshick clone git://github.com/katafractari/vim.git
homeshick link vim

homeshick clone git://github.com/katafractari/shell.git
homeshick link shell

