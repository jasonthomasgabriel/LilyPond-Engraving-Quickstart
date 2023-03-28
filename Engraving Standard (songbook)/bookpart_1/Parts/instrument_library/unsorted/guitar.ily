%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unsorted/guitar.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_guitar_bookpart_one = \relative c' {
  \no_music % remove when inputting notes
}

part_guitar_bookpart_one = \new Staff \with {
  instrumentName = "Classical Guitar"
  shortInstrumentName = "Gt."
  midiInstrument = "acoustic guitar (nylon)"
} { \clef "treble_8" << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_guitar_bookpart_one >> }

part_guitar_part_bookpart_one = \new Staff \with {
  midiInstrument = "acoustic guitar (nylon)"
} { \clef "treble_8" << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_guitar_bookpart_one >> }