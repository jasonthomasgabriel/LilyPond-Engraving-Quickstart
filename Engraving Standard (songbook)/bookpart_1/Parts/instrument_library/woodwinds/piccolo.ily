%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/piccolo.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_piccolo_bookpart_one = \relative c' {
  \transposition c''
  c
}

part_piccolo_bookpart_one = \new Staff \with {
  instrumentName = "Piccolo"
  shortInstrumentName = "Pic."
  midiInstrument = "flute" %saving midi channels for preview purposes
} { \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_piccolo_bookpart_one >> }

part_piccolo_part_bookpart_one = \new Staff \with {
  midiInstrument = "flute" %saving midi channels for preview purposes
} { \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_piccolo_bookpart_one >> }