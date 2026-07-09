#!/bin/bash

echo "🌀 Menginstal zsh..."
sudo apt update
sudo apt upgrade -y
sudo apt install zsh curl git -y

echo "📁 Menyalin konfigurasi .zshrc ke $HOME"
cp "$(dirname "$0")/.zshrc" "$HOME/.zshrc"

# Install Oh My Zsh jika belum ada
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "⚡ Menginstal Oh My Zsh..."
	RUNZSH=no KEEP_ZSHRC=yes \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "✅ Oh My Zsh sudah terinstal."
fi

# Install Powerlevel10k theme
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
if [ ! -d "$P10K_DIR" ]; then
	echo "⚡ Menginstal Powerlevel10k theme..."
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
else
	echo "✅ Powerlevel10k sudah terinstal."
fi

# Custom theme/plugin
if [ -d "$(dirname "$0")/custom" ]; then
	echo "🔧 Menyalin custom zsh plugins/themes..."
	cp -r "$(dirname "$0")/custom"/* "$HOME/oh-my-zsh/custom/"
fi

# Ganti SHELL default ke zsh
if [ "$SHELL" != "$(which zsh)" ]; then
	echo "🔁 Mengatur zsh sebagai shell default..."
	chsh -s "$(which zsh)"
fi

echo "🎉 Selesai! Silakan buka terminal baru untuk menggunakan zsh."
