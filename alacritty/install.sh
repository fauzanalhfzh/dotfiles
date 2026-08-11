#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

WIN_USER_DIR=$(ls -d /mnt/c/Users/*/ 2>/dev/null | grep -v -E "/(Public|Default User|Default|All Users)/" | head -1 | sed 's:/$::')
ALACRITTY_DIR="$WIN_USER_DIR/AppData/Roaming/alacritty"

if [ -z "$WIN_USER_DIR" ]; then
    echo "❌ Tidak menemukan direktori user Windows (/mnt/c/Users/...)."
    exit 1
fi

echo "📁 Membuat direktori $ALACRITTY_DIR..."
mkdir -p "$ALACRITTY_DIR"

echo "📄 Menyalin alacritty.toml (copy, bukan symlink: path Windows tidak resolve symlink WSL)..."
cp "$SCRIPT_DIR/alacritty.toml" "$ALACRITTY_DIR/alacritty.toml"

echo "✅ Alacritty config selesai: $ALACRITTY_DIR/alacritty.toml"