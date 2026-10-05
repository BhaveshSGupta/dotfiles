# dotfiles
zsh (oh-my-zsh + p10k), tmux, vim (vim-plug), git (delta), shared aliases.

Git identity: work identity by default (from untracked `~/.gitconfig-work`); `.gitconfig-personal` (gmail) applies inside `~/dotfiles` and `~/personal/`, and to any repo whose remote is under `BhaveshSGupta/` (via `includeIf`). Check with `git config user.email`.

    git clone https://github.com/BhaveshSGupta/dotfiles ~/dotfiles && ~/dotfiles/install.sh

Not tracked on purpose: `~/.ssh` (keys and config), `~/.claude*`, any `.env`/tokens.
