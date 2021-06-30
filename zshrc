export ZSH=$HOME/.oh-my-zsh
export EDITOR='nvim'
export PATH=$HOME/bin:$HOME/.cargo/bin/:/opt:/usr/local/bin:/opt/jdk-12.0.2/bin/:$PATH
export MANWIDTH=${MANWIDTH:-80}
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

ZSH_THEME="gentoo"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

#plugins
plugins=(git colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# personal alias'es for git control and COL

alias ls="ls --color=auto"
alias ll='ls -la'
alias c="clear"
alias ipa="ip --brief --color a"
alias ip4="ip --brief --color -4 a"

alias Gs="git status"
alias Gpl="git pull"
alias Gps="git push"
alias Gcm="git commit -m"
alias Gc="git commit"
alias python="ipython3"

# Fuzzy file finder
[ -f ~/.fzf ] && source ~/.fzf

function build_cscope_db_func() {
    local PROJDIR=$PWD
    cd /
    find $PROJDIR -name \\''*.c\\'' -o -name \\''*.h\\'' > $PROJDIR/cscope.files
    cd $PROJDIR
    cscope -Rbkq
}
alias csbuild=\\''build_cscope_db_func\\''
