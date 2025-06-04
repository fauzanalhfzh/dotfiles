#!/bin/bash

echo "🟡 Menginstal Alacritty..."

# install Alacritty dari snap jika belum terpasang
if ! commmand -v alacritty >/dev/null 2>&1; then
	echo "📦 Menginstal Alacritty via Snap..."
	sudo snap install alacritty --classic
else
	echo "✅ Alacritty sudah terinstal."
fi

# Buat folder config jika belum ada
mkdir -p "$HOME/.config/alacritty"

# Salin konfigurasi
echo "📁 Menyalin alacritty.yml ke ~/.config/alacritty/"
cp "$(dirname "$0")/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"

echo "🎉 Alacritty berhasil dikonfigurasi!"
