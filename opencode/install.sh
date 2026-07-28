#!/bin/bash

echo "📁 Menyalin opencode.jsonc ke ~/.config/opencode/"
cp "$(dirname "$0")/opencode.jsonc" "$HOME/.config/opencode/opencode.jsonc"

echo "✅ Opencode config selesai."
