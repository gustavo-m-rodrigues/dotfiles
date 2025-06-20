# zsh history
HISTFILE=~/.zsh-hist
HISTSIZE=1000
SAVEHIST=10000
setopt extendedglob nomatch

# autocompletion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# alias
alias ls="ls --color"
alias ll="ls -l --color"
alias la="ls -a --color"

# ssh-agent envirenment variable
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

eval "$(starship init zsh)"

