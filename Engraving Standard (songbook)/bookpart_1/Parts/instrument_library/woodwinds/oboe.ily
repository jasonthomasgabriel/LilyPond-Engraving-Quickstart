%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/oboe.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_oboe_bookpart_one = \relative c' {
  \no_music % remove when inputting notes
}

part_oboe_bookpart_one = \new Staff \with {
  instrumentName = "Oboe"
  shortInstrumentName = "Ob."
  midiInstrument = "oboe"
} { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_oboe_bookpart_one >> }

part_oboe_part_bookpart_one = \new Staff \with {
  midiInstrument = "oboe"
} { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_oboe_bookpart_one >> }