#!/bin/sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
output_dir="$project_dir/tests/output/run-$(date '+%Y%m%d-%H%M%S')-$$"
default_source="$project_dir/.workflow-smoke-default-$$.ly"
library_source="$project_dir/.workflow-smoke-library-$$.ly"

if ! command -v lilypond >/dev/null 2>&1; then
  printf '%s\n' "LilyPond 2.25.20 or newer is required to run this smoke test." >&2
  exit 127
fi

if test -e "$default_source" || test -e "$library_source"; then
  printf '%s\n' "A temporary workflow smoke-test source already exists; refusing to overwrite it." >&2
  exit 1
fi

trap 'rm -f "$default_source" "$library_source"' EXIT HUP INT TERM
mkdir -p "$output_dir"

create_test_source() {
  bundle=$1
  destination=$2

  if ! awk -v bundle="$bundle" '
    BEGIN {
      no_music_count = 0
      default_count = 0
      library_count = 0
    }
    /^[[:space:]]*no_music[[:space:]]*=[[:space:]]*\\skip[[:space:]]+4[[:space:]]*$/ {
      print "no_music = { c4 d e f | g a b c | c b a g | f e d c | }"
      no_music_count++
      next
    }
    /^[[:space:]]*\\include "music\/bundle_music_default_part\.ily"[[:space:]]*$/ {
      default_count++
      if (bundle == "default") {
        print
      } else {
        print "      % \\include \"music/bundle_music_default_part.ily\""
      }
      next
    }
    /^[[:space:]]*%[[:space:]]*\\include "music\/bundle_music_instrument_library\.ily"[[:space:]]*$/ {
      library_count++
      if (bundle == "library") {
        print "      \\include \"music/bundle_music_instrument_library.ily\""
      } else {
        print
      }
      next
    }
    { print }
    END {
      if (no_music_count != 1 || default_count != 1 || library_count != 1) {
        printf "Cannot prepare workflow smoke test: expected one no_music definition and one default/library bundle choice (found %d, %d, %d).\\n", no_music_count, default_count, library_count > "/dev/stderr"
        exit 1
      }
    }
  ' "$project_dir/new_song.ly" > "$destination"; then
    printf 'Could not prepare the %s workflow smoke-test source from new_song.ly.\\n' "$bundle" >&2
    return 1
  fi
}

create_test_source default "$default_source"
create_test_source library "$library_source"

cd "$project_dir"
lilypond --output="$output_dir/default-workflow-smoke" "$default_source"
test -s "$output_dir/default-workflow-smoke.pdf"
test -s "$output_dir/default-workflow-smoke.midi"

lilypond --output="$output_dir/instrument-library-workflow-smoke" "$library_source"
test -s "$output_dir/instrument-library-workflow-smoke.pdf"
test -s "$output_dir/instrument-library-workflow-smoke.midi"

printf '%s\n' "Default-part and instrument-library workflow smoke scores compiled successfully."
printf 'Generated files are available in: %s\n' "$output_dir"
