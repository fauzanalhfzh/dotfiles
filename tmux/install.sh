#!/bin/bash

CONFIG_DIR="$HOME/.config/tmux"
PLUGINS_DIR="$CONFIG_DIR/plugins"
TPM_DIR="$PLUGINS_DIR/tpm"
SCRIPT_DIR="$(dirname "$0")"

echo "📁 Membuat direktori $CONFIG_DIR..."
mkdir -p "$CONFIG_DIR"

echo "🔗 Symlink tmux.conf..."
ln -sf "$SCRIPT_DIR/tmux.conf" "$CONFIG_DIR/tmux.conf"

if [ ! -d "$TPM_DIR" ]; then
    echo "📦 Meng-clone Tmux Plugin Manager..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
else
    echo "✅ TPM sudah terinstall"
fi

echo "🔌 Menginstall plugin tmux..."
"$TPM_DIR/bin/install_plugins" || true

echo "✅ Tmux setup selesai."
echo "ℹ️  Jalankan tmux dan tekan prefix + I (kapital) untuk muat plugin."
