#!/bin/bash

#echo "🌀 Menjalankan setup Zsh..."
#bash ./zsh/install.sh

echo "📦 Menjalankan instalasi setup SNAP package"
bash ./snap/install.sh

#echo "🧱 Menjalankan setup Alacritty..."
#bash ./alacritty/install.sh

echo "🔧 Menjalankan setup Git..."
bash ./git/install.sh

echo "🐟 Menjalankan setup Fish..."
bash ./fish/install.sh

echo "🤖 Menjalankan setup Opencode..."
bash ./opencode/install.sh

echo "🪟 Menjalankan setup Tmux..."
bash ./tmux/install.sh
