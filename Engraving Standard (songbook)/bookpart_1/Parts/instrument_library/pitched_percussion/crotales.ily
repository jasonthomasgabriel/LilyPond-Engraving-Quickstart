%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/pitched_percussion/crotales.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_crotales_bookpart_one = \relative c' {
  \transposition c''
  c
}

part_crotales_bookpart_one = \new Staff \with {
  instrumentName = "Crotales"
  shortInstrumentName = "Crot."
  midiInstrument = "glockenspiel" %saving midi channels for preview purposes
} { \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_crotales_bookpart_one >> }

part_crotales_part_bookpart_one = \new Staff { 
  \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_crotales_bookpart_one >> 
}