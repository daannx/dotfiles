export ZSH=$HOME/.oh-my-zsh
export EDITOR='nvim'
export PATH=$HOME/.cargo/bin/:/opt:/usr/local/bin:/usr/lib/ccache/bin:/opt/ida-7.2/:$HOME/.gem/ruby/2.7.0/bin:$PATH
export MANWIDTH=${MANWIDTH:-120}
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export LESSHISTFILE=/dev/null less
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#ZSH_THEME='fishy'
ZSH_THEME='gentoo'
#ZSH_THEME='robbyrussell'

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

#plugins
plugins=(git colored-man-pages zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# personal alias'es for git control and QOL

alias ls="exa"
alias ll='exa -la'
alias lt='tree'
alias c="clear"
alias ipa="ip --brief --color a"
alias ip4="ip --brief --color -4 a"

alias Gs="git status"
alias Gpl="git pull"
alias Gps="git push"
alias Gcm="git commit -m"
alias Gc="git commit"
alias Pc="apt list --installed | wc -l"
alias python='ipython'

# Fuzzy file finder
[ -f ~/.fzf ] && source ~/.fzf

# DELETE LATER, used for Nest Hub research
#export PATH=$HOME/Archive/Research/NestHub/fuchsia/.jiri_root/bin:$PATH
#source /home/danx/Archive/Research/NestHub/fuchsia/scripts/fx-env.sh
