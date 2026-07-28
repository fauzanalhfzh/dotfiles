#!/bin/bash

FISH_DIR="$HOME/.config/fish"
DOTFILES_FISH="$(dirname "$0")"

echo "🐟 Setup Fish config..."

# Backup existing config.fish if it's a real file (not a symlink)
if [ -f "$FISH_DIR/config.fish" ] && [ ! -L "$FISH_DIR/config.fish" ]; then
    echo "📦 Backup existing config.fish -> config.fish.bak"
    mv "$FISH_DIR/config.fish" "$FISH_DIR/config.fish.bak"
fi

# Symlink config.fish
echo "🔗 Symlink config.fish"
ln -sf "$DOTFILES_FISH/config.fish" "$FISH_DIR/config.fish"

# Symlink custom logo
echo "🖼️ Symlink logo.txt"
ln -sf "$DOTFILES_FISH/logo.txt" "$FISH_DIR/logo.txt"

# Install fisher if not present
if [ ! -f "$FISH_DIR/functions/fisher.fish" ]; then
    echo "🎣 Installing fisher..."
    fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
else
    echo "✅ Fisher already installed"
fi

# Install plugins
if command -v fisher &>/dev/null; then
    echo "🔌 Installing fisher plugins..."
    fish -c "fisher update"
fi

echo "✅ Fish setup complete."
