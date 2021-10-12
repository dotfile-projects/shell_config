# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jellychen/.oh-my-zsh"

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
plugins=(git sudo colored-man-pages command-not-found z zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# ranger/ranger
alias lf=ranger

# jesseduffield/lazygit
alias lg=lazygit

# JDK
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export PATH=$JAVA_HOME/bin:$PATH:.

# gradle
export GRADLE_HOME=/usr/local/share/gradle/gradle-7.0.2
export PATH=$PATH:$GRADLE_HOME/bin

# maven
export MVN="/usr/local/share/maven"
export PATH="$MVN/bin:$PATH"

# zsh-autosuggestions
export TERM=xterm-256color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

#export http_proxy="http://127.0.0.1:15732"
#export HTTP_PROXY="http://127.0.0.1:15732"
#export https_proxy="http://127.0.0.1:15732"
#export HTTPS_PROXY="http://127.0.0.1:15732"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
