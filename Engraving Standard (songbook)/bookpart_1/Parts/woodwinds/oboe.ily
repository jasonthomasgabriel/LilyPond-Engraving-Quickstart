%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/oboe.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_oboe_bookpart_one = \relative c' {
  c
}

part_oboe_bookpart_one = \new Staff \with {
  instrumentName = "Oboe"
  shortInstrumentName = "Ob."
  midiInstrument = "oboe"
} { \clef treble << \global_bookpart_one \notes_oboe_bookpart_one >> }