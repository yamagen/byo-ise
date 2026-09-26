#!/bin/bash
set -euo pipefail

ISE="$HOME/Dropbox/pub/ise/ise.json"
CONFIG="config"
OUT="dan"

dan="${1:?usage: $0 DAN}"
num=$(printf "%03d" "$dan")

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

jq -c --argjson dan "$dan" \
  '.[] | select(.dan == $dan) | .paragraph[]' \
  "$ISE" > "$tmp"

{
    echo '\ifJA'

    glossemit \
      -c "$CONFIG/controlled-byo-ise-ja.json" \
      --latex < "$tmp"

    echo '\else'

    glossemit \
      -c "$CONFIG/controlled-byo-ise-en.json" \
      --latex < "$tmp"

    echo '\fi'
} > "$OUT/${num}tr.tex"

echo "$OUT/${num}tr.tex"
