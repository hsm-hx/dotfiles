## dotfiles

macOS (Apple Silicon) 用の個人設定ファイル。

### 含まれるもの

- `.zshrc` — zsh 設定 (powerlevel10k, zsh-completions, zsh-autosuggestions)
- `.config/nvim/init.lua` — Neovim 設定 (lazy.nvim, iceberg, treesitter, lualine)
- `.config/ghostty/config` — Ghostty 設定 (Rose Pine Moon)
- `.claude/` — Claude Code 設定 (settings.json, カスタムスキル)

### 前提

```
brew install neovim zplug zsh-completions zsh-autosuggestions font-hack-nerd-font
```

### セットアップ

```
git clone git@github.com:hsm-hx/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh
```

初回起動時に zplug が powerlevel10k を、lazy.nvim がプラグインを自動インストールします。
