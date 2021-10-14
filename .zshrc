# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    sudo
    colored-man-pages
    command-not-found
    z
    zsh-syntax-highlighting
    zsh-autosuggestions
    vi-mode
    zsh-completions
)


source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

# ranger/ranger
alias lf=ranger

# jesseduffield/lazygit
alias lg=lazygit

# vi-mode config
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
MODE_INDICATOR="%F{yellow}+%f"

# zsh-autosuggestions
export TERM=xterm-256color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# can add local config in this file
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# install fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
