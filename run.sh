#!/bin/bash

curDir=$(cd $(dirname $0); pwd)

echo $curDir

if [ ! -d ~/ ];then
    mkdir ~/
fi

if [ -f ~/.tmux.conf ]; then
    echo "exist"
    cp ~/.tmux.conf ~/.tmux.conf.bak
fi

if [ -L ~/.tmux.conf ];then
    echo "Link"
    rm -f ~/.tmux.conf
fi

ln -sf $curDir/.tmux.conf ~/.tmux.conf 
