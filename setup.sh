#!/bin/bash

echo "🌀 Menjalankan setup Zsh..."
bash ./zsh/install.sh

echo "📦 Menjalankan instalasi setup SNAP package"
bash ./snap.install.sh

echo "🧱 Menjalankan setup Alacritty..."
bash ./alacritty/install.sh
