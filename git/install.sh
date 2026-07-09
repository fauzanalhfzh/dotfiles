#!/bin/bash

echo "📁 Menyalin .gitconfig ke $HOME"
cp "$(dirname "$0")/.gitconfig" "$HOME/.gitconfig"

echo "✅ Git config selesai."
