#!/bin/sh

mkdir -p "${ZDOTDIR}/completions"

if command -v proto >/dev/null 2>&1; then
  proto completions --shell zsh > "${ZDOTDIR}/completions/_proto"
fi
