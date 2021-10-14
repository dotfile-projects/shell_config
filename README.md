# My shell configs

All those config files will install to `~/.shell_configs/`

List of software config files:

* zsh
* tmux
* vim
* ranger
* lazygit
* ...

Those config work must require those sofeware installed.


## Install

auto install

wget

```shell
wget -O - https://raw.githubusercontent.com/dotfile-projects/shell_config/main/auto_install.sh | sh
```

curl

```shell
curl -o - https://raw.githubusercontent.com/dotfile-projects/shell_config/main/auto_install.sh | sh
```

manual install

```shell
# download from github
git clone https://github.com/dotfile-projects/shell_config ~/.shell_config
# run the shell script
sh ~/.shell_config/.run.sh
```

## Software list

### tmux

See [tmux](https://github.com/tmux/tmux)

After install tmux config files, reload config file by tmux: `tmux source-file ~/.tmux.conf`

### vim

After install vim config files, install vim plugins by plug, press `vim` open vim window and press `:` go to command mode, then press `PlugInstall` to install other plugins. If the network not well, try install more then once.

### ohmyzsh

You should change bash to `zsh` and install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) first.

After install config files, `source ~/.zshrc` to enable zsh environment. If some plugins not found, install them manual.

For example: [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) plugin is need to install, reference it's [install](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) document.

