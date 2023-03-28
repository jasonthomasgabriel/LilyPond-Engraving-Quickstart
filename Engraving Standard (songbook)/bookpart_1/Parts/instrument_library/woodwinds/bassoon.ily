%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/bassoon.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_bassoon_bookpart_one = \relative c' {
  \no_music % remove when inputting notes
}

part_bassoon_bookpart_one = \new Staff \with {
  instrumentName = "Bassoon"
  shortInstrumentName = "Bn."
  midiInstrument = "bassoon"
} { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_bassoon_bookpart_one >> }

part_bassoon_part_bookpart_one = \new Staff \with {
  midiInstrument = "bassoon"
} { \clef bass << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_bassoon_bookpart_one >> }