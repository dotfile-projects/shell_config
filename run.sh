#!/bin/bash

curDir=$(cd $(dirname $0); pwd)

clearOriginFiles() {
    script=$1
    # backup origin config file
    if [ -f ~/$script ]; then
        echo "$script existed, backup it to $script.bak."
        cp ~/$script ~/$script.bak
    fi

    # remove origin soft link
    if [ -L ~/$script ];then
        echo "$script link existed, remove it and create a new one."
        rm -f ~/$script
    fi

    # backup origin config dir
    if [ -d ~/$script ]; then
        echo "$script dir existed, backup it to $script.bak"
        cp -r ~/$script ~/$script.bak
    fi
}

install_script() {
    script=$1

    clearOriginFiles $1

    if [ ! -d ~/ ];then
        mkdir ~/
    fi

    if [ -f $curDir/$script ]; then
        ln -sf $curDir/$script ~/$script
        echo "$script install success"
    fi

    if [ -d $curDir/$script ]; then
        ln -sf $curDir/$script/ ~/
        echo "$script dir install success"
    fi
}

# install tmux config
install_script .tmux.conf

# install zsh config
install_script .zshrc

# install vim config
install_script .vim
install_script .vimrc

# after install run source ~/.zshrc
