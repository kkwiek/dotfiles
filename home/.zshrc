export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"
export NVM_DIR="$HOME/.nvm"

if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
fi

if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

# History settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY

# Completion
fpath=("$HOME/dotfiles/vendor/zsh-completions/src" $fpath)

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

# Plugins
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source "$HOME/dotfiles/vendor/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/dotfiles/vendor/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/dotfiles/vendor/zsh-history-substring-search/zsh-history-substring-search.zsh"

# fzf
source "$HOME/dotfiles/vendor/fzf/shell/key-bindings.zsh"
source "$HOME/dotfiles/vendor/fzf/shell/completion.zsh"

# Custom keybindings
bindkey '^[[1;5A' history-substring-search-up
bindkey '^[[1;5B' history-substring-search-down

# Local config 
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
