%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/brass/trumpet.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_trumpet_bookpart_one = \relative c' {
  c
}

part_trumpet_bookpart_one = \new Staff \with {
  instrumentName = \markup \concat { "Trumpet in B" \super \flat }
  shortInstrumentName = \markup \concat { "Tr.B" \super { \flat } "." }
  midiInstrument = "trumpet"
} { \clef treble << \global_bookpart_one \notes_trumpet_bookpart_one >> }

part_trumpet_part_bookpart_one = \new Staff { 
  \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_trumpet_bookpart_one >> 
}