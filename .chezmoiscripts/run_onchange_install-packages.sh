#!/bin/bash

set -eu

brew bundle --no-lock --file=/dev/stdin <<EOF
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/core"
brew "bat"
brew "exa"
brew "fd"
brew "fish"
brew "fzf"
brew "gh"
brew "git"
brew "grep"
brew "htmlq"
brew "jq"
brew "nodebrew"
brew "starship"
brew "topgrade"
brew "yarn"
brew "pnpm"
brew "neovim"
cask "font-cica"
cask "font-jetbrains-mono-nerd-font"
cask "google-chrome"
cask "google-japanese-ime"
cask "visual-studio-code"
cask "hyper"
cask "raycast"
cask "fig"

EOF
