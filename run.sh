#!/bin/bash

curDir=$(cd $(dirname $0); pwd)


install_script() {
    script=$1

    if [ ! -d ~/ ];then
        mkdir ~/
    fi

    # backup origin config file
    if [ -f ~/$script ]; then
        echo "$script existed, backup it to $script.bak."
        cp ~/$script ~/$script.bak
    fi

    # remove origin softlink
    if [ -L ~/$script ];then
        echo "$script link existed, remove it and create a new one."
        rm -f ~/$script
    fi

    # link config file to target position
    ln -sf $curDir/$script ~/$script

    echo "$script install success"
}

install_script .tmux.conf

install_script .zshrc

