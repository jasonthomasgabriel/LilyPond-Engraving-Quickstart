%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/brass/trombone.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_trombone_bookpart_one = \relative c' {
  c
}

part_trombone_bookpart_one = \new Staff \with {
  instrumentName = "Trombone"
  shortInstrumentName = "Trb."
  midiInstrument = "trombone"
} { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_trombone_bookpart_one >> }

part_trombone_part_bookpart_one = \new Staff \with {
  midiInstrument = "trombone"
} { \clef bass << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_trombone_bookpart_one >> }