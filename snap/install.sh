#!/bin/bash

PACKAGE_FILE="$(dirname "$0")"/packages.txt

# Pastikan snapd terinstal
if ! command -v snap > /dev/null 2>&1; then
	echo "Snap belum terinstal, Menginstal snapd..."
	sudo apt update
	sudo apt install snapd -y
else
	echo "Snap sudah terinstal"
fi


# Baca dan install satu per satu
while read -r line || [[ -n "$line" ]]; do
	# lewati baris kosong atau komentar
	[[ -z "$line" || "$line" =~ ^# ]] && continue

	echo "Menginstall: $line"
	sudo snap install $line
done < "$PACKAGE_FILE"
