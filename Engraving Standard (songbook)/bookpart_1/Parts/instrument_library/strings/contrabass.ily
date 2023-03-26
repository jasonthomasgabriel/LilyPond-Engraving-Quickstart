%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/strings/contrabass.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_contrabass_bookpart_one = \relative c' {
  \transposition c
  c
}

part_contrabass_bookpart_one = \new Staff \with {
  instrumentName = "Contrabass"
  shortInstrumentName = "Cb."
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef bass << \global_bookpart_one \notes_contrabass_bookpart_one >> }

part_contrabass_part_bookpart_one = \new Staff { 
  \clef bass << \tempomarkings_bookpart_one \global_bookpart_one \notes_contrabass_bookpart_one >> 
}