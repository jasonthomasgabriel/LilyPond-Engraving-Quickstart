%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/pitched_percussion/soprano_metallophone.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_soprano_metallophone_bookpart_one = \relative c' {
  \transposition c''
  c
}

part_soprano_metallophone_bookpart_one = \new Staff \with {
  instrumentName = "Sop. Metallophone"
  shortInstrumentName = "Sop. Met."
  midiInstrument = "glockenspiel" %saving midi channels for preview purposes
} { \clef treble << \global_bookpart_one \notes_soprano_metallophone_bookpart_one >> }

part_soprano_metallophone_part_bookpart_one = \new Staff { 
  \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_soprano_metallophone_bookpart_one >> 
}