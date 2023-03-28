%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/pitched_percussion/crotales.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_crotales_bookpart_one = \relative c' {
  \transposition c''
  \no_music % remove when inputting notes
}

part_crotales_bookpart_one = \new Staff \with {
  instrumentName = "Crotales"
  shortInstrumentName = "Crot."
  midiInstrument = "glockenspiel" %saving midi channels for preview purposes
} { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_crotales_bookpart_one >> }

part_crotales_part_bookpart_one = \new Staff \with {
  midiInstrument = "glockenspiel" %saving midi channels for preview purposes
} { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_crotales_bookpart_one >> }