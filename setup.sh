#!/bin/zsh
set -eu

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Symlink .zshrc to home
ln -sfnv "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Symlink .config/nvim
mkdir -p "$HOME/.config"
ln -sfnv "$DOTFILES_DIR/.config/nvim" "$HOME/.config/nvim"

# Symlink .config/ghostty
ln -sfnv "$DOTFILES_DIR/.config/ghostty" "$HOME/.config/ghostty"

# Symlink .claude (settings & skills)
mkdir -p "$HOME/.claude"
ln -sfnv "$DOTFILES_DIR/.claude/settings.json" "$HOME/.claude/settings.json"
ln -sfnv "$DOTFILES_DIR/.claude/skills" "$HOME/.claude/skills"

echo "Done. Restart your shell or run: source ~/.zshrc"
