#!/bin/bash

set -eu

brew bundle --file=/dev/stdin <<EOF
brew "bat"
brew "eza"
brew "git-delta"
brew "fd"
brew "fish"
brew "fzf"
brew "gh"
brew "git"
brew "gnupg"
brew "grep"
brew "htmlq"
brew "jq"
brew "starship"
brew "topgrade"
brew "yarn"
brew "pnpm"
brew "deno"
brew "helix"
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
cask "ghostty"
cask "raycast"
cask "monitorcontrol"
cask "zoom"
mas "LINE", id: 539883307
mas "Slack", id: 803453959

EOF
