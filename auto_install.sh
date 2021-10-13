#!/bin/sh

configPath=~/.shell_config

git clone https://github.com/dotfile-projects/vim.git $configPath

sh $configPath/run.sh

echo "Install complete!"

