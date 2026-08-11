# Alacritty Config — Design

Date: 2026-08-12
Status: Approved by user

## Context

- Alacritty berjalan di sisi Windows (`C:\Program Files\Alacritty\alacritty.exe`) dalam setup WSL2.
- Repo dotfiles belum punya direktori `alacritty/` (config lama ada di git history: `alacritty/alacritty.toml` Dracula).
- Config lama: Dracula theme, FiraCode Nerd Font 16, `decorations = "none"`, `opacity = 0.4`, `blur = true`.
- Maple Mono NF v7.9 sudah diinstall ke Windows (per-user, `%LOCALAPPDATA%\Microsoft\Windows\Fonts`) — terverifikasi 3.499 glyph PUA (ikon nerd).

## Scope

1. Tambah `alacritty/alacritty.toml` — Dracula, font "Maple Mono NF" size 16, `decorations = "none"`, `opacity = 0.4`. `blur` dihapus (fitur macOS-only, tidak didukung Windows).
2. Tambah `alacritty/install.sh` — menyalin (bukan symlink, path Windows tidak resolve symlink WSL) ke `C:\Users\<user>\AppData\Roaming\alacritty\alacritty.toml`. Username Windows dideteksi otomatis dari `/mnt/c/Users/` (skip Public/Default).
3. `setup.sh` — tambah langkah setup Alacritty.
4. Verifikasi: `alacritty.exe --check-config` di sisi Windows.

## Config detail (alacritty.toml)

```toml
[colors.primary]
background = "0x282a36"
foreground = "0xf8f8f2"

[colors.normal]
black = "0x21222c"
red = "0xff5555"
green = "0x50fa7b"
yellow = "0xf1fa8c"
blue = "0xbd93f9"
magenta = "0xff79c6"
cyan = "0x8be9fd"
white = "0xf8f8f2"

[colors.bright]
black = "0x6272a4"
red = "0xff6e6e"
green = "0x69ff94"
yellow = "0xffffa5"
blue = "0xd6acff"
magenta = "0xff92df"
cyan = "0xa4ffff"
white = "0xffffff"

[colors.selection]
background = "0x44475a"
text = "0xf8f8f2"

[font]
size = 16

[font.normal]
family = "Maple Mono NF"
style = "Regular"

[window]
decorations = "none"
opacity = 0.4
```

## Out of scope

- Installer Alacritty (sudah ada di Windows).
- Install font (sudah selesai).
- Konfigurasi lintas sisi lain (tmux dll).