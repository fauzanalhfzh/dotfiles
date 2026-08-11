if status is-interactive

    # Fastfetch on start with custom logo
    fastfetch --file-raw ~/.config/fish/logo.txt

    # PATH
    fish_add_path $HOME/.cargo/bin
    fish_add_path /home/zen/.opencode/bin
    fish_add_path /home/zen/.local/bin
    fish_add_path /usr/local/go/bin

    set -gx BUN_INSTALL $HOME/.bun
    fish_add_path $BUN_INSTALL/bin

    # Environment
    set -gx GITHUB_TOKEN (gh auth token)
    set -gx EDITOR nvim
    set -gx VISUAL nvim

    # Starship
    starship init fish | source

    # Aliases
    alias fishconfig "nvim ~/.config/fish/config.fish"
    alias applyfish "source ~/.config/fish/config.fish"
    alias c clear
    alias ls "eza --color=always --long --no-filesize --icons=always --no-time"
    alias lsa "eza -a --color=always --long --no-filesize --icons=always --no-time"
    alias bat batcat
    alias cdb "cd .."
    alias cdbb "cd ../.."
    alias dotconfig "cd ~/.config"
    alias zenlab "ssh myvps@192.168.1.20"
    alias ds "ssh dockerserver@192.168.1.21"
    alias tma "tmux attach-session"
    alias lg lazygit
    alias oc opencode

end

set -x N_PREFIX "$HOME/n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
