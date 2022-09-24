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
brew "node"
brew "starship"
brew "topgrade"
brew "yarn"
brew "pnpm"
brew "neovim"
brew "mas"
cask "font-cica"
cask "font-jetbrains-mono-nerd-font"
cask "google-chrome"
cask "google-japanese-ime"
cask "visual-studio-code"
cask "hyper"
cask "raycast"
cask "fig"
cask "monitorcontrol"
mas "GoodNotes", id: 1444383602
mas "LINE", id: 539883307
mas "Slack", id: 803453959

EOF