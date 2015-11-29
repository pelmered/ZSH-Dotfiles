#!/usr/bin/env zsh

cd ~/.dotfiles/iTerm2/color-schemes
for f in *; do
  THEME=$(basename "$f")
  defaults write -app iTerm 'Custom Color Presets' -dict-add "$THEME" "$(cat "$f")"
done
cd -