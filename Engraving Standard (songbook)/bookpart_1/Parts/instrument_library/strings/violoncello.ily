%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/strings/violoncello.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_violoncello_bookpart_one = \relative c' {
  \no_music % remove when inputting notes
}

part_violoncello_bookpart_one = \new Staff \with {
  instrumentName = "Violoncello"
  shortInstrumentName = "Vc."
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_violoncello_bookpart_one >> }

part_violoncello_part_bookpart_one = \new Staff \with {
  midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
} { \clef bass << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_violoncello_bookpart_one >> }