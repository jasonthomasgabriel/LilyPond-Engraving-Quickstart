%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/brass/tuba.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_tuba_bookpart_one = \relative c' {
  c
}

part_tuba_bookpart_one = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "Tb."
  midiInstrument = "tuba"
} { \clef bass << \global_bookpart_one \notes_tuba_bookpart_one >> }