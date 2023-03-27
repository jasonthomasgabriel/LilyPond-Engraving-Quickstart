%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/bassoon.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_bassoon_bookpart_one = \relative c' {
  c
}

part_bassoon_bookpart_one = \new Staff \with {
  instrumentName = "Bassoon"
  shortInstrumentName = "Bn."
  midiInstrument = "bassoon"
} { \clef bass << \global_bookpart_one \notes_bassoon_bookpart_one >> }

part_bassoon_part_bookpart_one = \new Staff \with {
  midiInstrument = "bassoon"
} { \clef bass << \tempomarkings_bookpart_one \global_bookpart_one \notes_bassoon_bookpart_one >> }