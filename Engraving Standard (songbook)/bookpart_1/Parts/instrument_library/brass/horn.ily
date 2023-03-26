%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/brass/horn.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_horn_bookpart_one = \relative c' {
  c
}

part_horn_bookpart_one = \new Staff \with {
  instrumentName = "Horn in F"
  shortInstrumentName = "Hn.F."
  midiInstrument = "french horn"
} { \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_horn_bookpart_one >> }

part_horn_part_bookpart_one = \new Staff { 
  \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_horn_bookpart_one >> 
}