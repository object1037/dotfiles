#!/bin/bash

set -eu

if [[ -f ~/.ssh/id_ed25519 && -f ~/.ssh/id_ed25519.pub ]]; then
  echo "ed25519 key pair exists."
else
  ssh-keygen -t ed25519 -C "mail@object1037.dev"
  eval "$(ssh-agent -s)"
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519
  gh auth login
  gh ssh-key add ~/.ssh/id_ed25519.pub
  ssh -T git@github.com
fi