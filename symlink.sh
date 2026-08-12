link_config() {
    local source="$1"
    local target="$2"

    mkdir -p "$(dirname "$target")"

    if [ -e "$target" ] || [ -L "$target" ]; then
        rm -rf "$target"
    fi

    ln -s "$source" "$target"
}

link_config "$HOME/dotfiles/home/nvim" "$HOME/.config/nvim"
link_config "$HOME/dotfiles/home/yazi" "$HOME/.config/yazi"
link_config "$HOME/dotfiles/home/starship.toml" "$HOME/.config/starship.toml"
link_config "$HOME/dotfiles/home/.wezterm.lua" "$HOME/.wezterm.lua"
link_config "$HOME/dotfiles/home/.zshrc" "$HOME/.zshrc"

