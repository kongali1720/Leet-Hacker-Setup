#!/usr/bin/env bash
set -e

# Simple installer for demo tools (non-invasive)
# Run: chmod +x install.sh && ./install.sh

echo "== Leet Hacker Setup — installer =="
echo "This will try to install: figlet toilet lolcat cowsay neofetch fortune (if available)."
echo "It will not modify your dotfiles. Run with sudo if needed."

# detect package manager
if command -v apt >/dev/null 2>&1; then
  PKG="apt"
  UPDATE="sudo apt update -y"
  INSTALL="sudo apt install -y"
elif command -v pacman >/dev/null 2>&1; then
  PKG="pacman"
  UPDATE="sudo pacman -Sy"
  INSTALL="sudo pacman -S --noconfirm"
elif command -v brew >/dev/null 2>&1; then
  PKG="brew"
  UPDATE="brew update"
  INSTALL="brew install"
else
  PKG="unknown"
  echo "No supported package manager found. Please install required tools manually."
fi

echo "Package manager detected: $PKG"

if [ "$PKG" != "unknown" ]; then
  echo "Updating package database..."
  eval $UPDATE || true
  echo "Installing packages..."
  # try install common tools; ignore failures for missing packages
  for pkg in figlet toilet lolcat cowsay neofetch fortune; do
    echo "- trying to install $pkg ..."
    eval "$INSTALL $pkg" || echo "  (failed to install $pkg — skip)"
  done
fi

echo
echo "== Done =="
echo "Now run: ./hack.sh"
