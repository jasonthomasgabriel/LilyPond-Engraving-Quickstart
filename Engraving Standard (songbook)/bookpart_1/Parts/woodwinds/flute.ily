%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/flute.ily
%%%% version: 3.2
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
} { \clef treble << \global_bookpart_one \notes_flute_bookpart_one >> }