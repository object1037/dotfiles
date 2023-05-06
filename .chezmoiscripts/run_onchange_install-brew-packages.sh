#!/bin/bash

set -eu

brew bundle --no-lock --file=/dev/stdin <<EOF
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/core"
brew "bat"
brew "exa"
brew "git-delta"
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
brew "deno"
brew "neovim"
brew "mas"
brew "macos-trash"
brew "httpie"
brew "zoxide"
brew "gnuplot"
brew "typst"
cask "font-cica"
cask "font-jetbrains-mono-nerd-font"
cask "google-chrome"
cask "google-japanese-ime"
cask "visual-studio-code"
cask "hyper"
cask "raycast"
cask "fig"
cask "monitorcontrol"
cask "zoom"
mas "GoodNotes", id: 1444383602
mas "LINE", id: 539883307
mas "Slack", id: 803453959

EOF
