# Development tests

These optional checks are for LEQ development and maintenance. Run them from the repository root with LilyPond 2.25.20 or newer available on `PATH`:

```sh
./LilyPond-Engraving-Quickstart/tests/smoke-test.sh
./LilyPond-Engraving-Quickstart/tests/workflow-smoke-test.sh
./LilyPond-Engraving-Quickstart/tests/example-music-regression/run.sh
```

- `smoke-test.sh` compiles the starter, no-MIDI option, score presets, instrument-library book, and header examples.
- `workflow-smoke-test.sh` checks the default-part and instrument-library starter workflows using temporary copies of `new_song.ly`; it does not change the starter file.
- `example-music-regression/run.sh` compiles representative real-music excerpts. Its custom score assembly tests engraving with LEQ resources, but does not exercise the complete starter workflow. See [its README](example-music-regression/README.md) for details.

Each script retains generated PDFs and MIDI files in a timestamped, Git-ignored output directory and prints its location. Successful compilation does not verify visual correctness, so inspect the PDFs. The instrument-library workflow may report MIDI channel-remapping and page-compression warnings; these are non-fatal if compilation succeeds.
