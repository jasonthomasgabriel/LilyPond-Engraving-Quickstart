%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/brass/tuba.ily
%%%% version: 3.1.2
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
} { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_tuba_bookpart_one >> }

part_tuba_part_bookpart_one = \new Staff \with {
  midiInstrument = "tuba"
} { \clef bass << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_tuba_bookpart_one >> }