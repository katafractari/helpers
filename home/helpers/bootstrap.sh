#!/bin/sh

cd

# Homesick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

# Oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# SPF13 Vim
curl http://j.mp/spf13-vim3 -L -o - | sh

# Helper scripts
git clone git@github.com:katafractari/helpers.git

# MyRepos
mkdir .myrepos
curl -L https://raw.github.com/joeyh/myrepos/master/mr > .myrepos/mr
chmod +x .myrepos/mr
