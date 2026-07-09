#!/bin/bash

echo "🟡 Menginstal Alacritty..."

# install Alacritty dari snap jika belum terpasang
if ! command -v alacritty >/dev/null 2>&1; then
	echo "📦 Menginstal Alacritty via Snap..."
	sudo snap install alacritty --classic
else
	echo "✅ Alacritty sudah terinstal."
fi

# Buat folder config jika belum ada
mkdir -p "$HOME/.config/alacritty"

# Hapus config lama (format .yml) jika ada
rm -f "$HOME/.config/alacritty/alacritty.yml"

# Salin konfigurasi
echo "📁 Menyalin alacritty.toml ke ~/.config/alacritty/"
cp "$(dirname "$0")/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

echo "🎉 Alacritty berhasil dikonfigurasi!"
