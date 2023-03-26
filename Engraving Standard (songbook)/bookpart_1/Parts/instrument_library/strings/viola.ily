%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/strings/viola.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_viola_bookpart_one = \relative c' {
  c
}

part_viola_bookpart_one = \new Staff \with {
  instrumentName = "Viola"
  shortInstrumentName = "Vla."
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef alto << \global_bookpart_one \notes_viola_bookpart_one >> }

part_viola_part_bookpart_one = \new Staff { 
  \clef alto << \tempomarkings_bookpart_one \global_bookpart_one \notes_viola_bookpart_one >> 
}