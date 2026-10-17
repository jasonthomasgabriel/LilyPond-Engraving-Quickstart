#!/bin/sh
set -eu

test_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
output_dir="$test_dir/output/run-$(date '+%Y%m%d-%H%M%S')-$$"

if ! command -v lilypond >/dev/null 2>&1; then
  printf '%s\n' "LilyPond 2.25.20 or newer is required for this regression check." >&2
  exit 127
fi

mkdir -p "$output_dir"
cd "$test_dir"

lilypond --output="$output_dir/district-394" district-394.ly
test -s "$output_dir/district-394.pdf"
test -s "$output_dir/district-394.midi"

lilypond --output="$output_dir/bella-donna" bella-donna.ly
test -s "$output_dir/bella-donna.pdf"
test -s "$output_dir/bella-donna.midi"

printf '%s\n' "Both example-music regression scores compiled successfully."
printf 'Inspect the retained PDFs and MIDI files in: %s\n' "$output_dir"
