#!/bin/sh

configPath=~/.shell_config

git clone https://github.com/dotfile-projects/shell_config.git --depth=1 $configPath

sh $configPath/run.sh

echo "Install complete!"

