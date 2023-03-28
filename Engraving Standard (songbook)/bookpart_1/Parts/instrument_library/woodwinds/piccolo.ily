%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/piccolo.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_piccolo_bookpart_one = \relative c' {
  \transposition c''
  \no_music % remove when inputting notes
}

part_piccolo_bookpart_one = \new Staff \with {
  instrumentName = "Piccolo"
  shortInstrumentName = "Pic."
  midiInstrument = "flute" %saving midi channels for preview purposes
} { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_piccolo_bookpart_one >> }

part_piccolo_part_bookpart_one = \new Staff \with {
  midiInstrument = "flute" %saving midi channels for preview purposes
} { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_piccolo_bookpart_one >> }