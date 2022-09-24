#!/bin/bash

set -eu

mkdir -p ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots

defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
