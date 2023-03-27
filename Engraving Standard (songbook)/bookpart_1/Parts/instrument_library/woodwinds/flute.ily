%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/flute.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_flute_bookpart_one = \relative c' {
  c
}

part_flute_bookpart_one = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_flute_bookpart_one >> }

part_flute_part_bookpart_one = \new Staff \with {
  midiInstrument = "flute"
} { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_flute_bookpart_one >> }