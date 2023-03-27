%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/strings/violin_I.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_violin_I_bookpart_one = \relative c' {
  c
}

part_violin_I_bookpart_one = \new Staff \with {
  instrumentName = "Violin I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_violin_I_bookpart_one >> }

part_violin_I_part_bookpart_one = \new Staff \with {
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_violin_I_bookpart_one >> }