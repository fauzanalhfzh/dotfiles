# dotfiles — @fauzanalhfzh

Personal dotfiles managed with bash scripts.

## Komponen

| Directory  | Description                               |
|------------|-------------------------------------------|
| `zsh/`     | Zsh + Oh My Zsh + Powerlevel10k           |
| `alacritty/` | Alacritty terminal (Dracula theme)      |
| `git/`     | Git global config + aliases               |
| `nvim/`    | Neovim (LazyVim)                          |
| `snap/`    | Snap packages list                        |
| `home-manager/` | Nix Home Manager config              |

## Setup

```bash
bash setup.sh
```

Atau manual per komponen:

```bash
bash ./zsh/install.sh        # Zsh + Oh My Zsh + Powerlevel10k
bash ./alacritty/install.sh  # Alacritty terminal
bash ./git/install.sh        # Git global config
bash ./snap/install.sh       # Snap packages
```

## Git Aliases

| Alias  | Perintah                           |
|--------|------------------------------------|
| `co`   | checkout                           |
| `br`   | branch                             |
| `st`   | status                             |
| `ci`   | commit                             |
| `lg`   | log --graph --oneline --all --decorate |
| `lgg`  | lg + --show-signature              |
| `amend`| commit --amend --no-edit           |
| `unstage` | reset HEAD --                   |
| `undo` | reset --soft HEAD~1                |
| `last` | log -1 HEAD                        |
| `diffc`| diff --cached                      |
| `discard` | restore .                       |
| `who`  | shortlog -sn --no-merges           |
| `create` | bikin repo baru + GitHub remote |
| `ad`   | add                                |
| `df`   | diff                               |
| `sw`   | switch                             |
| `rs`   | restore                            |
| `pl`   | pull                               |
| `ps`   | push                               |
| `ap`   | add --patch                        |

## Zsh Aliases

| Alias      | Perintah                          |
|------------|-----------------------------------|
| `c`        | clear                             |
| `ls`       | eza --long --no-filesize --icons=always --no-time |
| `zshconfig`| nvim ~/.zshrc                     |
| `applyzsh` | source ~/.zshrc                   |
| `ohmyzsh`  | nvim ~/.oh-my-zsh                 |

## Snap Packages

- android-studio
- gh
- nodejs
- php
- neovim
- ripgrep
- lazygit

## Home Manager (Nix)

Config di `home-manager/home.nix` — username `rangers`, packages: android-studio, gh, nodejs_22, php, neovim, ripgrep, lazygit.
