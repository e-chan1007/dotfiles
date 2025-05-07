#!/bin/sh

mkdir -p "${ZDOTDIR:-~/.config/zsh}/completions"

if command -v proto >/dev/null 2>&1; then
  proto completions --shell zsh > "${ZDOTDIR:-~/.config/zsh}/completions/_proto"
fi
