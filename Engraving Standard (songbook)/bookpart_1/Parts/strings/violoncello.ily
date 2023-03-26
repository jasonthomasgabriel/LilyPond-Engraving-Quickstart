%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/strings/violoncello.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_violoncello_bookpart_one = \relative c' {
  c
}

part_violoncello_bookpart_one = \new Staff \with {
  instrumentName = "Violoncello"
  shortInstrumentName = "Vc."
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef bass << \global_bookpart_one \notes_violoncello_bookpart_one >> }