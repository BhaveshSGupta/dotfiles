#!/usr/bin/env bash
# Symlink dotfiles into $HOME. Existing real files are moved to ~/.local/share/dotfiles-old/.
set -euo pipefail
repo="$(cd "$(dirname "$0")" && pwd)"
old="$HOME/.local/share/dotfiles-old"; mkdir -p "$old"
for f in .zshrc .bashrc .shell_common .tmux.conf .gitconfig .gitconfig-personal .p10k.zsh .vimrc; do
  target="$HOME/$f"
  if [ -e "$target" ] && [ ! -L "$target" ]; then mv "$target" "$old/$f.$(date +%s)"; fi
  ln -sfn "$repo/$f" "$target"
  echo "linked $f"
done

[ -f "$HOME/.gitconfig-work" ] || echo "NOTE: create ~/.gitconfig-work with your work [user] name/email (kept out of this repo)."
