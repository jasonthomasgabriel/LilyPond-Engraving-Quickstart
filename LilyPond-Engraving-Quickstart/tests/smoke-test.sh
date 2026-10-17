#!/bin/sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
output_dir="$project_dir/tests/output/run-$(date '+%Y%m%d-%H%M%S')-$$"

if ! command -v lilypond >/dev/null 2>&1; then
  printf '%s\n' "LilyPond is required to run this smoke test." >&2
  exit 127
fi

mkdir -p "$output_dir"
cd "$project_dir"
lilypond --output="$output_dir/new_song" new_song.ly
test -s "$output_dir/new_song.pdf"
test -s "$output_dir/new_song.midi"

lilypond --output="$output_dir/no_midi_smoke" tests/no_midi_smoke.ly
test -s "$output_dir/no_midi_smoke.pdf"
if test -e "$output_dir/no_midi_smoke.midi"; then
  printf '%s\n' "The MIDI-free main book unexpectedly generated a MIDI file." >&2
  exit 1
fi

lilypond --output="$output_dir/piano_trio_smoke" tests/piano_trio_smoke.ly
test -s "$output_dir/piano_trio_smoke.pdf"
test -s "$output_dir/piano_trio_smoke.midi"

lilypond --output="$output_dir/woodwind_quintet_smoke" tests/woodwind_quintet_smoke.ly
test -s "$output_dir/woodwind_quintet_smoke.pdf"
test -s "$output_dir/woodwind_quintet_smoke.midi"

lilypond --output="$output_dir/instrument_library_smoke" tests/instrument_library_smoke.ly
test -s "$output_dir/instrument_library_smoke.pdf"
test -s "$output_dir/instrument_library_smoke.midi"
test -s "$output_dir/instrument_library_smoke-alto-saxophone.pdf"

lilypond --output="$output_dir/header_smoke" tests/header_smoke.ly
test -s "$output_dir/header_smoke.pdf"
test -s "$output_dir/header_smoke.midi"

printf '%s\n' "All LEQ smoke-test scores compiled successfully."
printf 'Generated files are available in: %s\n' "$output_dir"
