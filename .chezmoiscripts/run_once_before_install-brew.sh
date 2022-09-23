#!/bin/bash

set -eu

if [ "$(command -v brew)" ]; then
  echo "Homebrew already installed."
else
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  {{ if eq .chezmoi.arch "arm64" -}}
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  {{ else -}}
  echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.bash_profile
  eval "$(/usr/local/bin/brew shellenv)"
fi
