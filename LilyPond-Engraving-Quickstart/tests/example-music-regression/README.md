# Real-music engraving fixture

This optional development fixture compiles short excerpts from the two example scores listed in the project README using LEQ's current house-style resources and main book part. The excerpted notes and lyrics are copied into this test so the example projects are not dependencies.

These harnesses define their own score assembly to combine the excerpts in useful ways. In particular, they do not follow the complete normal workflow in `new_song.ly`: they bypass the standard music bundle, instrument selection, preset, and scoring setup. As a result, this fixture is useful for catching LilyPond syntax/compilation problems and for visually inspecting how representative music engraves with LEQ resources, but it is **not an end-to-end test of the normal LEQ setup**.

The excerpts are:

- *District 394*: the `Viola (solo)` part, measures 6-13, from [`music/parts/instrument_library/user_instruments/user_instrument_1.ily`](https://github.com/jasonthomasgabriel/District-394--LilyPond-Score-/blob/main/District%20394/music/parts/instrument_library/user_instruments/user_instrument_1.ily). This phrase exercises alto clef, tuplets, changing meters, ties, dynamics, and long note values.
- *Ouverture - Bella/Donna*: measures 5-10, arranged as chord names, soprano with lyrics, and piano grand staff. The excerpts come from [`chords.ily`](https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/other/chords.ily), [`soprano.ily`](https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/voice/soprano.ily), [`lyrics_soprano.ily`](https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/voice/lyrics/lyrics_soprano.ily), and [`piano.ily`](https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/unsorted/piano.ily). This passage tests chord names, lyrics, multiple staves, tuplets, dynamics, ties, and meter changes.

To run it, make LilyPond 2.25.20 or newer available on `PATH`, then run:

```sh
./LilyPond-Engraving-Quickstart/tests/example-music-regression/run.sh
```

The runner checks that LilyPond succeeds and produces non-empty PDF and MIDI files. It does not compare rendered pages against reference images or automatically verify note placement, register, spacing, or other visual details. PDF and MIDI results are retained in a timestamped `output/` subfolder for manual inspection. The fixture sources and harnesses are part of the project; only generated files under `output/` are Git-ignored.

For coverage of the standard LEQ starter, bundles, presets, and instrument-library book workflow, also run the separate `../smoke-test.sh` check. Neither check replaces compiling and reviewing a real score created through the normal LEQ workflow.
