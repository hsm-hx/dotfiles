#!/bin/zsh
set -eu

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Symlink .zshrc to home
ln -sfnv "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Symlink .config/nvim
mkdir -p "$HOME/.config"
ln -sfnv "$DOTFILES_DIR/.config/nvim" "$HOME/.config/nvim"

echo "Done. Restart your shell or run: source ~/.zshrc"
