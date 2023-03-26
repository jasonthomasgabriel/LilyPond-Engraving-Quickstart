%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/strings/violin_II.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_violin_II_bookpart_one = \relative c' {
  c
}

part_violin_II_bookpart_one = \new Staff \with {
  instrumentName = "Violin II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef treble << \global_bookpart_one \notes_violin_II_bookpart_one >> }