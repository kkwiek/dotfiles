DOTFILES="$HOME/dotfiles"
BIN="$HOME/.local/bin"

if [ ! -d "$DOTFILES/vendor/fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git "$DOTFILES/vendor/fzf"
fi

cp "$DOTFILES/vendor/fzf/bin/fzf" "$BIN/fzf"

