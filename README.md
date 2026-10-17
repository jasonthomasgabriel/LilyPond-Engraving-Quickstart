# LilyPond Engraving Quickstart (LEQ v4.0.3)

LEQ is a reusable LilyPond score template: it provides a house engraving style, page and title setup, reusable instrument parts, and optional individual-part books so you can spend less time repeating score setup.

## Requirements

- LilyPond 2.25.20 or newer. The top-level `new_song.ly` sets this minimum; older `\version` declarations in included files describe the syntax those files use and do not mean the complete template supports that older LilyPond release.
- Optional house fonts: Source Serif Pro, Source Sans Pro, and Source Code Pro. Install them from [`fonts-to-install`](fonts-to-install/) or disable the `housefonts.ily` include in `new_song.ly` to use LilyPond's defaults.

## Start a score

1. Open `LilyPond-Engraving-Quickstart/new_song.ly`. You can edit it in place or optionally rename it for your piece; LilyPond uses the `.ly` filename as the output basename. Keep it in the `LilyPond-Engraving-Quickstart` folder so its relative includes still work.
2. Open the score file in LilyPond or your preferred LilyPond editor.
3. Set the score metadata in `music/headers.ily`, and set key, meter, tempo, and other shared musical settings in `music/parts/global.ily`.
4. Choose a score setup in the **Musical includes** section of `new_song.ly`:
   - Keep `bundle_music_default_part.ily` for one blank, nameless staff. Add notes in `music/parts/default_part.ily`.
   - Instead, enable `bundle_music_instrument_library.ily` for the instrument templates. Add notes to the instrument files under `music/parts/instrument_library/`.
5. Compile the `.ly` file. From a terminal, run `lilypond path/to/your_piece.ly`; the PDF and MIDI output use the source filename and are written next to it unless an output path is specified.

## Instrument library and score presets

The instrument-library bundle defines the available parts and its default orchestral scoring. To use a preset, enable the instrument-library bundle in `new_song.ly`, then uncomment exactly one preset include immediately below it. A preset replaces the default scoring with that ensemble's instrument selection. The available presets are:

- `music/presets/string_quartet.ily`
- `music/presets/piano_trio.ily`
- `music/presets/woodwind_quintet.ily`

These presets replace the default `scoring` definition and can be edited to suit your ensemble. Use the corresponding part names from `bundle_music_instrument_library.ily` when making a custom score.

To print the individual parts, enable the `bundle_books_instrument_library.ily` include near the end of `new_song.ly`. The saxophone library currently includes an E-flat alto saxophone template and an individual-part book.

## MIDI and engraving options

The default `music/mainbookpart.ily` produces the score PDF and MIDI output, including an articulated MIDI rendering. To omit MIDI from the main book, change the main-book include in `new_song.ly` to `music/mainbookpart_no_midi.ily`. The two files share the same score header and visual layout; the no-MIDI version omits both MIDI score blocks. Individual part books have their own MIDI score blocks; to omit MIDI for a part, comment out its MIDI-only `\score` blocks in the corresponding book file. Keeping these as visible score blocks makes the output choices explicit in the LilyPond source.

Paper size, margins, and notation defaults are in `resources/`. Staff sizes are set near the top of `new_song.ly`. `resources/papersize_margins.ily` also contains commented examples for spacing diagnostics, ragged bottoms, and two-sided printing.

## Development check (optional)

These optional checks are for LEQ development and maintenance, not part of the normal score-creation workflow. Run them from the repository root:

```sh
./LilyPond-Engraving-Quickstart/tests/smoke-test.sh
./LilyPond-Engraving-Quickstart/tests/workflow-smoke-test.sh
./LilyPond-Engraving-Quickstart/tests/example-music-regression/run.sh
```

All checks require LilyPond 2.25.20 or newer. See [`tests/README.md`](LilyPond-Engraving-Quickstart/tests/README.md) for coverage, output locations, and notes about interpreting results.

## Examples

Public scores made with LEQ:

- [District 394](https://github.com/jasonthomasgabriel/District-394--LilyPond-Score-/)
- [Ouverture Bella/Donna (Showcase LEQ)](https://github.com/jasonthomasgabriel/Sandbox/tree/main/LEQ-showcase-Ouverture-BellaDonna) - a purpose-built score showing many LEQ features.

## License

The project is released under the MIT License; see [`LICENSE`](LICENSE).
