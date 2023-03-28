%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/strings/contrabass.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_contrabass_bookpart_one = \relative c' {
  \transposition c
  \no_music % remove when inputting notes
}

part_contrabass_bookpart_one = \new Staff \with {
  instrumentName = "Contrabass"
  shortInstrumentName = "Cb."
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_contrabass_bookpart_one >> }

part_contrabass_part_bookpart_one = \new Staff \with {
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef bass << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_contrabass_bookpart_one >> }