#!/bin/bash

set -eu

pnpm install-completion fish
deno completions fish > ~/.config/fish/completions/deno.fish
