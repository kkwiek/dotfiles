DOTFILES="$HOME/dotfiles"

sudo -y apt install zsh

git clone https://github.com/zsh-users/zsh-autosuggestions "$DOTFILES/vendor/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-completions.git "$DOTFILES/vendor/zsh-completions"
git clone https://github.com/zsh-users/zsh-history-substring-search.git "$DOTFILES/vendor/zsh-history-substring-search"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  "$DOTFILES/vendor/zsh-syntax-highlighting"

curl -sS https://starship.rs/install.sh | sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

chsh -s $(which zsh)

